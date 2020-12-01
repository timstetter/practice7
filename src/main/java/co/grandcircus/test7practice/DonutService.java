package co.grandcircus.test7practice;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;



@Service
public class DonutService {

	private RestTemplate rt = new RestTemplate();
	
		
	public List<Donut> getDonuts(){
		String url = "https://grandcircusco.github.io/demo-apis/donuts.json";
		DonutResponse res = rt.getForObject(url, DonutResponse.class);		
		return res.getResults();
	}
	public Donut getDonutDetails(Integer id) {
		String url = "https://grandcircusco.github.io/demo-apis/donuts/" + id + ".json";
		return rt.getForObject(url, Donut.class);
	}
	
	
}
