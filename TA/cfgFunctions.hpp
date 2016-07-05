class TA
{
	tag = "TA";

  class City
  {
      file = "TA\functions\city";

      class registerCity {};
      class cityManager {};
      class initCity {};
      class getRandomCivilianClass {};
  };
  class CommonFunctions
	{
		  file = "TA\functions";

      class citySpawner {};
      class createCities {};
      class initTA {};
      class makeCommand {};
      class takeCommand {};
  };

  class Command_AI
  {
      file = "TA\functions\cai";

      class registerCommandGroups {};
  };

  class Marker
  {
      file = "TA\functions\marker";

      class randomPositionInMarker {};
      class rotateTranslation2d {};
      class rotateVector2d {};
  };

  class Profiler
  {
      file = "TA\functions\profiler";

      class nearPlayer {};
  };

  class Test
  {
      file = "TA\functions\test";

      class debugLog {};
      class testLogic {};
  };
};

