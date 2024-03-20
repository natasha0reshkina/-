public static List<House> Read(Stream stream)
{
    string csvall = StreamCsv(stream);
    List<House> houses = new List<House>();
    var csvConfig = new CsvConfiguration(CultureInfo.CurrentCulture)
    {
        HasHeaderRecord = false,
        ShouldSkipRecord = args => args.Row.Parser.RawRow == 1|| args.Row.Parser.RawRow == 2
    };


    using var csvReader = new CsvReader(File.OpenText(Config.pathcsv), csvConfig);

    string value;

    House house = new House();
    try
    {
        while (csvReader.Read())
        {
            house = new House();
            for (int i = 0; csvReader.TryGetField<string>(i, out value); i++)
            {
                
                switch (i)
                {
                    case 0:
                        house.GlobalId = value;
                        break;
                    case 1:
                        house.ObjectName = value;
                        break;
                    case 2:
                        house.NameWinter = value;
                        break;
                    case 3:
                        house.PhotoWinter = value;
                        break;
                    case 4:
                        house.AdmArea = value;
                        break;
                    case 5:
                        house.District = value;
                        break;
                    case 6:
                        house.Address = value;
                        break;
                    case 7:
                        house.Email = value;
                        break;
                    case 8:
                        house.WebSite = value;
                        break;
                    case 9:
                        house.HelpPhone = value;
                        break;
                    case 10:
                        house.HelpPhoneExtension = value;
                        break;
                    case 11:
                        house.WorkingHoursWinter = value;
                        break;
                    case 12:
                        house.ClarificationOfWorkingHoursWinter = value;
                        break;
                    case 13:
                        house.HasEquipmentRental = value;
                        break;
                    case 14:
                        house.EquipmentRentalComments = value;
                        break;
                    case 15:
                        house.HasTechService = value;
                        break;
                    case 16:
                        house.TechServiceComments = value;
                        break;
                    case 17:
                        house.HasDressingRoom = value;
                        break;
                    case 18:
                        house.HasEatery = value;
                        break;
                    case 19:
                        house.HasToilet = value;
                        break;
                    case 20:
                        house.HasWifi = value;
                        break;
                    case 21:
                        house.HasCashMachine = value;
                        break;
                    case 22:
                        house.HasFirstAidPost = value;
                        break;
                    case 23:
                        house.HasMusic = value;
                        break;
                    case 24:
                        house.UsagePeriodWinter = value;
                        break;
                    case 25:
                        house.DimensionsWinter = value;
                        break;
                    case 26:
                        house.Lighting = value;
                        break;
                    case 27:
                        house.SurfaceTypeWinter = value;
                        break;
                    case 28:
                        house.Seats = value;
                        break;
                    case 29:
                        house.Paid = value;
                        break;
                    case 30:
                        house.PaidComments = value;
                        break;
                    case 31:
                        house.DisabilityFriendly = value;
                        break;
                    case 32:
                        house.ServicesWinter = value;
                        break;
                    case 33:
                        house.GeoData = value;
                        break;
                    case 34:
                        house.Geodata_center = value;
                        break;
                    case 35:
                        house.Geoarea = value;
                        break;
                    case 36:
                        house.FIELD37 = value;
                        houses.Add(house);
                        break;
                    default:
                        break;

                }
             
            }


        }

        return houses;
