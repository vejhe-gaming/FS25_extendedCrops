-- FS25_extendedCrops - Global Script
ExtendedCrops = {}
ExtendedCrops.modDirectory = g_currentModDirectory

function ExtendedCrops:init()
    -- Vi lytter efter hvornår spillet er klar til at loade typer
    FSBaseMission.registerActionEvents = Utils.appendedFunction(FSBaseMission.registerActionEvents, ExtendedCrops.loadTypes)
end

function ExtendedCrops.loadTypes()
    -- Vi sikrer os at vi kun kører dette én gang pr. map-load
    if ExtendedCrops.loaded then return end
    
    local fruitXml = ExtendedCrops.modDirectory .. "xml/fruitTypes.xml"
    local fillXml = ExtendedCrops.modDirectory .. "xml/fillTypes.xml"

    if fileExists(fruitXml) then
        print("FS25_extendedCrops: Loading fruitTypes...")
        g_fruitTypeManager:loadFruitTypes(fruitXml, ExtendedCrops.modDirectory)
    end

    if fileExists(fillXml) then
        print("FS25_extendedCrops: Loading fillTypes...")
        g_fillTypeManager:loadFillTypes(fillXml, ExtendedCrops.modDirectory)
    end

    ExtendedCrops.loaded = true
end

ExtendedCrops:init()