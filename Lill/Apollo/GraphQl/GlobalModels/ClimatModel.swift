
import Foundation

struct ClimatModel: Codable {
    let deciduous: ClimateDeciduous?
    let habit: ClimateHabit?
    let hardiness: Int?
    let height: Int?
    let moisture: ClimateMoisture?
    let ph: ClimatePh?
    let shade: ClimateShade?
    let soil: ClimateSoil?
}

extension ClimateDeciduous: Codable {
    var localization: String {
        switch self {
        case .climateDeciduousDeciduous:
            return RLocalization.climate_deciduous_deciduous()
        case .climateDeciduousEvergreen:
            return RLocalization.climate_deciduous_evergreen()
        case .__unknown(_):
            return RLocalization.climante_deciduous_unknown()
        }
    }
}

extension ClimateHabit: Codable {
    var localization: String {
        switch self {
        case .climateHabitBamboo:
            return RLocalization.climate_habit_bamboo()
        case .climateHabitFern:
            return RLocalization.climate_habit_fern()
        case .climateHabitPerennialClimber:
            return RLocalization.climate_habit_perenial_climber()
        case .climateHabitShrub:
            return RLocalization.climate_habit_shrub()
        case .climateHabitTree:
            return RLocalization.climate_habit_tree()
        case .climateHabitAnnualClimber:
            return RLocalization.climate_habit_climber()
        case .climateHabitAnnualPerennial:
            return RLocalization.climate_habit_annual_perennial()
        case .climateHabitBiennial:
            return RLocalization.climate_habit_biennial()
        case .climateHabitBiennialPerennial:
            return RLocalization.climate_habit_biennial_perennial()
        case .climateHabitBulb:
            return RLocalization.climate_habit_bulb()
        case .climateHabitClimber:
            return RLocalization.climate_habit_climber()
        case .climateHabitPerennial:
            return RLocalization.climate_habit_perenial()
        case .__unknown(_):
            return RLocalization.climate_habit_unknown()
        }
    }
}

extension ClimateMoisture: Codable {
    var localization: String {
        switch self {
        case .climateMoistureD:
            return RLocalization.climate_moisture_d()
        case .climateMoistureDm:
            return RLocalization.climate_moisture_dm()
        case .climateMoistureM:
            return RLocalization.climate_moisture_m()
        case .climateMoistureDmw:
            return RLocalization.climate_moisture_dmw()
        case .climateMoistureDmwe:
            return RLocalization.climate_moisture_dmwe()
        case .climateMoistureMwe:
            return RLocalization.climate_moisture_mwe()
        case .climateMoistureMweWa:
            return RLocalization.climate_moisture_mwewa()
        case .climateMoistureWa:
            return RLocalization.climate_moisture_wa()
        case .climateMoistureWem:
            return RLocalization.climate_moisture_wem()
        case .climateMoistureWewa:
            return RLocalization.climate_moisture_wewa()
        case .__unknown(_):
            return RLocalization.climate_moisture_unknown()
        }
    }
}

extension ClimatePh: Codable {
    var localization: String {
        switch self {
        case .climatePhB:
            return RLocalization.climate_ph_b()
        case .climatePhN:
            return RLocalization.climate_ph_n()
        case .climatePhNb:
            return RLocalization.climate_ph_nb()
        case .climatePhA:
            return RLocalization.climate_ph_a()
        case .climatePhAn:
            return RLocalization.climate_ph_an()
        case .climatePhAnb:
            return RLocalization.climate_ph_anb()
        case .__unknown(_):
            return RLocalization.climate_ph_unknown()
        }
    }
}

extension ClimateShade: Codable {
    var localization: String {
        switch self {
        case .climateShadeN:
            return RLocalization.climate_shade_n()
        case .climateShadeS:
            return RLocalization.climate_shade_s()
        case .climateShadeSn:
            return RLocalization.climate_shade_sn()
        case .climateShadeFs:
            return RLocalization.climate_shade_fs()
        case .climateShadeFsn:
            return RLocalization.climate_shade_fsn()
        case .__unknown(_):
            return RLocalization.climate_shade_unknown()
        }
    }
}

extension ClimateSoil: Codable {
    var localization: String {
        switch self {
        case .climateSoilM:
            return RLocalization.climate_soil_m()
        case .climateSoilMh:
            return RLocalization.climate_soil_mh()
        case .climateSoilL:
            return RLocalization.climate_soil_l()
        case .climateSoilLm:
            return RLocalization.climate_soil_lm()
        case .climateSoilLmh:
            return RLocalization.climate_soil_lmh()
        case .__unknown(_):
            return RLocalization.climate_soil_unknown()
        }
    }
}

