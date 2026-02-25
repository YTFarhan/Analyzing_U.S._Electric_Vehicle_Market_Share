select *
from vehicle_data_cleaned;

-- The 'State' column had strange characters in front, and had to fix the '/' in 'Ethanol/Flex'
ALTER TABLE vehicle_data_cleaned
CHANGE `ï»¿State` State VARCHAR(50);

ALTER TABLE vehicle_data_cleaned
CHANGE `Ethanol/Flex` Ethanol VARCHAR(50);


-- Percentage of EVs, PHEVs, HEVs, and Gasoline for each state
SELECT State,
(Electric + Plug_In_Hybrid_Electric + Hybrid_Electric + Biodiesel + Ethanol + 
Compressed_Natural_Gas + Propane + Hydrogen + Methanol + Gasoline + Diesel + Unknown_Fuel) AS Total_Vehicles_in_State,
ROUND(Electric / (Electric + Plug_In_Hybrid_Electric + Hybrid_Electric + Biodiesel + Ethanol + 
Compressed_Natural_Gas + Propane + Hydrogen + Methanol + Gasoline + Diesel + Unknown_Fuel) * 100, 2) AS EV_Percentage,
ROUND(Plug_In_Hybrid_Electric / (Electric + Plug_In_Hybrid_Electric + Hybrid_Electric + Biodiesel + Ethanol + 
Compressed_Natural_Gas + Propane + Hydrogen + Methanol + Gasoline + Diesel + Unknown_Fuel) * 100, 2) AS PHEV_Percentage,
ROUND(Hybrid_Electric / (Electric + Plug_In_Hybrid_Electric + Hybrid_Electric + Biodiesel + Ethanol + 
Compressed_Natural_Gas + Propane + Hydrogen + Methanol + Gasoline + Diesel + Unknown_Fuel) * 100, 2) AS HEV_Percentage,
ROUND(Gasoline / (Electric + Plug_In_Hybrid_Electric + Hybrid_Electric + Biodiesel + Ethanol + 
Compressed_Natural_Gas + Propane + Hydrogen + Methanol + Gasoline + Diesel + Unknown_Fuel) * 100, 2) AS Gasoline_Percentage
FROM vehicle_data_cleaned;



-- Identify the top 5 states with the highest EV adoption rate (EVs as a % of all registered vehicles)
SELECT State,
ROUND(Electric / (Electric + Plug_In_Hybrid_Electric + Hybrid_Electric + Biodiesel + Ethanol + 
Compressed_Natural_Gas + Propane + Hydrogen + Methanol + Gasoline + Diesel + Unknown_Fuel) * 100, 2) AS EV_Adoption_Rate
FROM vehicle_data_cleaned
ORDER BY EV_Adoption_Rate DESC
LIMIT 5;



-- Compare EV adoption in California vs. other large states (e.g., Texas, Florida, New York)
select State, 
ROUND(Electric / (Electric + Plug_In_Hybrid_Electric + Hybrid_Electric + Biodiesel + Ethanol + 
Compressed_Natural_Gas + Propane + Hydrogen + Methanol + Gasoline + Diesel + Unknown_Fuel) * 100, 2) AS EV_Adoption_Rate
from vehicle_data_cleaned
where State in ('California', 'Texas', 'Florida', 'New York');




-- Highlight which alternative fuels (biodiesel, ethanol, hydrogen) have meaningful presence vs. niche usage

-- Finding totals for biodiesel, ethanol and hydrogen
select sum(Biodiesel) as Biodiesel_Total, 
sum(Ethanol) as Ethanol_Total, 
sum(Hydrogen) as Hydrogen_Total
from vehicle_data_cleaned;


--  Finding out which fuel is meaningful vs. niche
select round(sum(Biodiesel) / sum(Electric + Plug_In_Hybrid_Electric + Hybrid_Electric + Biodiesel + Ethanol + 
Compressed_Natural_Gas + Propane + Hydrogen + Methanol + Gasoline + Diesel + Unknown_Fuel) * 100, 4) as Biodiesel_Pct,
round(sum(Ethanol) / sum(Electric + Plug_In_Hybrid_Electric + Hybrid_Electric + Biodiesel + Ethanol + 
Compressed_Natural_Gas + Propane + Hydrogen + Methanol + Gasoline + Diesel + Unknown_Fuel) * 100, 4) as Ethanol_Pct,
round(sum(Hydrogen) / sum(Electric + Plug_In_Hybrid_Electric + Hybrid_Electric + Biodiesel + Ethanol + 
Compressed_Natural_Gas + Propane + Hydrogen + Methanol + Gasoline + Diesel + Unknown_Fuel) * 100, 4) as Hydrogen_Pct
from vehicle_data_cleaned;






