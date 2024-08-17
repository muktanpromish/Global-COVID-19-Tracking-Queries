SELECT *
FROM PortfolioProject1..CovidDeaths
ORDER by 3,4

SELECT *
FROM PortfolioProject1..CovidVaccinations
ORDER by 3,4

SELECT Location,date, total_cases,new_cases,total_deaths,population
FROM PortfolioProject1..CovidDeaths

-- Total cases vs total deaths --"COVID-19 Death Chance (%)"
SELECT
    Location,
    date,
    total_cases,
    total_deaths,
    CAST((total_deaths * 1.0 / total_cases) * 100 AS DECIMAL(10, 2)) AS DeathPercent
FROM PortfolioProject1..CovidDeaths
--WHERE Location = 'United Kingdom'
ORDER BY 1,2

-- Total cases vs Population
SELECT
    Location,
    date,
    total_cases,
    population,
    CAST((total_cases * 1.0 / population) * 100 AS DECIMAL(10, 2)) AS DeathPercent
FROM PortfolioProject1..CovidDeaths
--WHERE Location = 'United Kingdom'
ORDER BY 1,2

-- Country with highest covid infected population%
SELECT
    Location,
    population,
    MAX(total_cases) as HighestInfection,
    CAST((MAX(total_cases) * 1.0 / population) * 100 AS DECIMAL(10, 2)) AS HighestInfectionPercent
FROM PortfolioProject1..CovidDeaths
GROUP BY Location, population
ORDER BY HighestInfectionPercent DESC;

--showing country with highest death rate
SELECT
    Location,
    MAX(total_deaths) as TotalDeathCount
FROM PortfolioProject1..CovidDeaths
WHERE continent is NOT NULL
GROUP BY [location]
ORDER By TotalDeathCount DESC

-- Break down by continent
SELECT
    Location,
    MAX(total_deaths) as TotalDeathCount
FROM PortfolioProject1..CovidDeaths
WHERE continent is NULL
GROUP BY [location]
ORDER By TotalDeathCount DESC

-- global numbers total case by total death in percent
SELECT
    SUM(new_cases) AS total_cases,
    SUM(new_deaths) AS total_deaths,
    CAST((SUM(new_deaths) * 1.0 / NULLIF(SUM(new_cases), 0)) * 100 AS DECIMAL(10, 2)) AS DeathPercentage
FROM PortfolioProject1..CovidDeaths
WHERE continent IS NOT NULL
ORDER BY 1,2;


-- looking at total population vs vaccinations
SELECT 
    dea.continent,
    dea.[location],
    dea.population,
    dea.[date],
    vac.new_vaccinations,
    SUM(CONVERT(int,vac.new_vaccinations)) OVER (PARTITION BY dea.location ORDER BY dea.date) AS RollingPeopleVaccinated
FROM 
    PortfolioProject1..CovidDeaths dea
JOIN 
    PortfolioProject1..CovidVaccinations vac 
    ON dea.[location] = vac.[location]
    AND dea.[date] = vac.[date]
WHERE 
    dea.continent IS NOT NULL
ORDER BY 
    dea.continent,
    dea.[location],
    dea.[date];

--use CTE (COMMON TABLE EXPRESSION)
WITH PopVac AS (
    SELECT 
        dea.continent,
        dea.[location],
        dea.population,
        dea.[date],
        -- Convert nvarchar to int
        CONVERT(int, vac.new_vaccinations) AS new_vaccinations,
        -- Sum over the converted int
        SUM(CONVERT(int, vac.new_vaccinations)) OVER (PARTITION BY dea.location ORDER BY dea.date) AS RollingPeopleVaccinated
    FROM 
        PortfolioProject1..CovidDeaths dea
    JOIN 
        PortfolioProject1..CovidVaccinations vac 
        ON dea.[location] = vac.[location]
        AND dea.[date] = vac.[date]
    WHERE 
        dea.continent IS NOT NULL
)
SELECT 
    continent,
    location,
    date,
    population,
    new_vaccinations,
    RollingPeopleVaccinated,
    CAST((RollingPeopleVaccinated * 1.0 / population) * 100 AS DECIMAL(10, 2)) AS VaccinationPercentage
FROM 
    PopVac
ORDER BY 
    continent, location, date;


--create temp table
Drop TABLE if EXISTS #PercentPopulationVaccinated
CREATE TABLE #PercentPopulationVaccinated (
    continent NVARCHAR(255),
    location NVARCHAR(255),
    population NUMERIC,
    date DATE,
    new_vaccinations NUMERIC,
    RollingPeopleVaccinated NUMERIC,
);
    SELECT 
        dea.continent,dea.[location],dea.date, dea.population,vac.new_vaccinations,
        -- Convert nvarchar to int
        CONVERT(int, vac.new_vaccinations) AS new_vaccinations,
        -- Sum over the converted int
        SUM(CONVERT(int, vac.new_vaccinations)) OVER (PARTITION BY dea.location ORDER BY dea.date) AS RollingPeopleVaccinated
    FROM  PortfolioProject1..CovidDeaths dea
    JOIN PortfolioProject1..CovidVaccinations vac 
    ON dea.[location] = vac.[location]
    AND dea.[date] = vac.[date]
   -- WHERE dea.continent IS NOT NULL

    select *, (RollingPeopleVaccinated/population)*100
    FROM #PercentPopulationVaccinated




