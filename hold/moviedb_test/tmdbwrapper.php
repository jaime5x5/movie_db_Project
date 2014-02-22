<?php
/**
* Some code borrowed from TMDB API v3 - a PHP
* wrapper for API v3 of themoviedb.org
*/

class tmdbwrapper{
	
    const _API_URL_ = "http://api.themoviedb.org/3/";
	const VERSION = '0.0.2';
	
	private $_apikey;
	private $_lang;	
    
		public function  __construct($apikey,$lang='en'){
			$this->setApikey($apikey);		
			$this->setLang($lang);
			$conf = $this->getConfig();			
			if (empty($conf)){
				echo "Unable to read configuration, verify that the API key is valid";
				exit;
			}			
		}
		
		public function getConfig(){
			return $this->_call("configuration","");
		}
	
		private function setApikey($apikey){
			$this->_apikey = (string) $apikey;
		}
			
		private function getApikey(){
			return $this->_apikey;
		}

		public function setLang($lang="en"){
			$this->_lang = $lang;
		}
	
		public function getLang(){
			return $this->_lang;
		}		
	
		public function movieInfo($idMovie,$option="",$print=false){
			$option = (empty($option))?"":"/" . $option;
			$params = "movie/" . $idMovie . $option;
			$movie= $this->_call($params,"");
				return $movie;
		}

		public function movieDetail($idMovie){
			return $this->movieInfo($idMovie,"",false);
		}
		
		public function searchMovie($movieTitle){
			$movieTitle="query=".urlencode($movieTitle);
			return $this->_call("search/movie",$movieTitle,$this->_lang);
		}
		
		public function movieCrew($idMovie){
			$params = "movie/" . $idMovie . "/credits";
			return $this->_call($params, "");			
		}
	
		private function _call($action,$text,$lang=""){
				
			$lang=(empty($lang))?$this->getLang():$lang;
			$url= tmdbwrapper::_API_URL_.$action."?api_key=".$this->getApikey()."&language=".$lang."&".$text;			
			$ch = curl_init();
				curl_setopt($ch, CURLOPT_URL, $url);
				curl_setopt($ch, CURLOPT_HEADER, 0);
				curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
				curl_setopt($ch, CURLOPT_FAILONERROR, 1);

			$results = curl_exec($ch);
			$headers = curl_getinfo($ch);

			$error_number = curl_errno($ch);
			$error_message = curl_error($ch);

			curl_close($ch);
			$results = json_decode(($results),true);
			return (array) $results;
		}
}
?>
