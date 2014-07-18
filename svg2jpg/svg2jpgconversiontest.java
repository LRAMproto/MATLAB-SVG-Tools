public class svg2jpgconversiontest
{
	public static void main(String args[])
	{

		test(args);
	}

	public static void test(String args[])
	{
		String file_args[] = args;
		System.out.printf("Converting file. And More!\n");
		// Creates new Save Object
		SaveAsJPEG converter = new SaveAsJPEG();
		// Converts specified file.
		try {
			converter.main(file_args);
		} catch (Exception e) {
			System.out.printf("Cannot generate SVG image.\n");
			e.printStackTrace();
		}
		//Confirms Rendering Job is Finished
		System.out.printf("Rendering complete.\n");		
	}
}
