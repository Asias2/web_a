package beans;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.URL;
import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class CitiesWebReader {

	public ArrayList<String> readCities() throws IOException {
		ArrayList<String> al = new ArrayList<String>();
		URL url = new URL(
				"http://en.wikipedia.org/wiki/List_of_cities_in_Georgia%2C_USA");
		BufferedReader in = new BufferedReader(new InputStreamReader(
				url.openStream()));
		String line;
		while ((line = in.readLine()) != null) {
			String parsedWord = parseLine(line);

			if (parsedWord != null) {
				al.add(parsedWord);
			}
		}
		in.close();

		return al;
	}

	private String parseLine(String line) {
		if (line != null) {
			Pattern pattern = Pattern
					.compile("<li><a href=.*title=\".*,.*\">(.*)</a></li>");
			Matcher matcher = pattern.matcher(line);
			boolean matchesPattern = matcher.find();
			if (matchesPattern) {
				return matcher.group(matcher.groupCount());
			}
		}

		return null;
	}

}
