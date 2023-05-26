//
//  HomePage.swift
//  Twitter
//
//  Created by Sneh kalariya on 08/05/23.
//

import UIKit

class HomePage: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    
    var logoImage = [UIImage(named: "gujaratSamachar"),UIImage(named: "aajTak"),UIImage(named: "sandesh"),UIImage(named: "tata Words"),UIImage(named: "IndianPremierLeague"),UIImage(named: "gujaratSamachar"),UIImage(named: "aajTak"),UIImage(named: "Tv9Gujarati8"),UIImage(named: "gujaratSamachar"),UIImage(named: "sandesh"),UIImage(named: "gujaratSamachar"),UIImage(named: "gujaratSamachar"),UIImage(named: "aajTak"),UIImage(named: "gujaratSamachar"),UIImage(named: "gujaratSamachar"),UIImage(named: "IndianPremierLeague"),UIImage(named: "Tv9Gujarati"),UIImage(named: "gujaratSamachar"),UIImage(named: "aajTak"),UIImage(named: "gujaratSamachar")]
    
    var name = ["gujaratSamachar","aajTak","sandesh","tata Words","IndianPremierLeague","gujaratSamachar","aajTak","Tv9Gujarati8","gujaratSamachar","sandesh","gujaratSamachar","gujaratSamachar","aajTak","gujaratSamachar","gujaratSamachar","","IndianPremierLeague","Tv9Gujarati","gujaratSamachar","aajTak","gujaratSamachar"]
    
    var topicInformation = ["ધાર્મિક સ્વતંત્રતા અંગે ભારતની ટીકા કરતાં...","दिल्ली मेट्रो में गंदी हरकत करने वाले युवक...","WTC ફાઈનલ પહેલા સામે આવી ઓવલ...","श्री @RNTata2000 जी से मिलकर बहुत अच्छा लगा। में उनको अपने...","The Most Iconic picture of Virat Kohli.","શું લાગે છે, ધોની IPLમાંથી પણ સંન્યાસ લઈ લેશે???",".@SrBachchan ने सोशल मीडिया पर एक तस्वीर शेयर की है...","US Ambassador to India, Eric Garcetti met Reliance Industries CMD...","રવીન્દ્ર જાડેજા અને MLA પત્ની રિવાબા મળ્યા પીએમ મોદીને...","અમેરિકામાં દેવાના સંકટ વચ્ચે બાઈડેનની ઓસ્ટ્રેલિયામાં યોજાનારી ક્વાડ મીટિંગ રદ...","ચોરી અથવા ખોવાયેલો મોબાઈલ જાતે જ કરી શકાશે ટ્રેક, કેન્દ્રએ લોન્ચ કરી નવી સિસ્ટમ...","કેદારનાથમાં 60 ક્વિન્ટલનો ૐ લાગશે..."," क्या आप बता सकते हैं कि आईपीएल इतिहास में सर्वाधिक शतक लगाने का रिकॉर्ड किस बल्लेबाज़ के नाम है???","તમને આ ટાઈટન્સનો નવો કલર કેવો લાગ્યો? commentsમાં જણાવો...","હોમ ગ્રાઉન્ડ પર ધોનીની છેલ્લી IPL???","IPL 2023 Points Table!!!","MUKESH AMBANI એ એક દિવસમાં 92,98,82,65,000 રૂપિયા ગુમાવ્યા, જાણો હવે તેમની નેટવર્થ કેટલી છે???","અપરા એકાદશીએ દ્વારકાધીશ મંદિરથી આવતા મોટા સમાચાર...","Vande Bharat Express: मुंबई से गोवा के बीच चलेगी वंदे भारत ट्रेन...","રશિયાનો વળતો પ્રહાર, યુક્રેનમાં તૈનાત અમેરિકન પેટ્રિયટ મિસાઈલ સિસ્ટમ તોડી પાડી..."]
  
    var topicMention = ["#CentralGovernment #ModiGovernment #USReport #India #ReligiousFreedom #ArindamBagchi #SJaishankar","पूरी ख़बर: https://intdy.in/krccxj #DelhiMetro #ATCard","#WTCFinal2023 #TeamIndia #CricketAustralia #OvalLondonhttps://sandesh.com/sports/pictures-of-the-oval-ground-pitch-before-the-wtc-final"," "," ","#MSD #MSDhoni #Thala #DhoniRetire #DhoniFans #ChennaiSuperKings #CSK #WhistlePodu"," ","#TV9News","#PMModi #NarendraModi #Modi #RivabaJadeja #RavindraJadeja #RavindrasinhJadeja #BJP #BJPMLA #Gujarat #Gujarati","#japan #JoeBiden #QuadSummit","#CEIR #MobileTracker #GovernmentWebsite #TrackStolenMobile","#Kedarnath #KedarnathDham #KedarnathYatra #KedarnathTemple #KedarnathMandir","#Cricket #IPL #IPL2023","#GujaratTitans #GT #NarendraModiStadium #Ahmedabad #IPL #GTvsSRH #HardikPandya","#WhistlePodu #CSK #CSKvKKR #IPL2023   #MSDhoni #Chepauk #mahi","CSK, LSG, MI, PBKS and RCB - one of them will finish in the Top 2.","#mukeshambani #gautamadani #reliance","#Dwarkadish #Dwarka #DwarkaTemple #DwarkadishMandir #ApraEkadashi"," ","#Russia #RussiaUkraineWar #Ukraine #USPatriotMissileSystem #KinzhalMissile"]
    
    var topicImage = [UIImage(named: "1"),UIImage(named: "2"),UIImage(named: "3"),UIImage(named: "4"),UIImage(named: "5"),UIImage(named: "6"),UIImage(named: "7"),UIImage(named: "8"),UIImage(named: "9"),UIImage(named: "10"),UIImage(named: "11"),UIImage(named: "12"),UIImage(named: "13"),UIImage(named: "14"),UIImage(named: "15"),UIImage(named: "16"),UIImage(named: "17"),UIImage(named: "18"),UIImage(named: "19"),UIImage(named: "20"),]
    

    @IBOutlet weak var profaileImage: UIImageView!
    @IBOutlet weak var collectionView1: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        profaileImage.layer.cornerRadius = 30
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return logoImage.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView1.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! HomepageCollectionViewCell
        cell.topicLogo.image = logoImage[indexPath.row]
        cell.topicLogo.layer.cornerRadius = 30
        cell.topicName.text = name[indexPath.row]
        cell.topicText.text = topicInformation[indexPath.row]
        cell.topicMantion.text = topicMention[indexPath.row]
        cell.topicImage.image = topicImage[indexPath.row]
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 385, height: 572)
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if indexPath.row == 0{
            let navigation = storyboard?.instantiateViewController(withIdentifier: "homePageCollectionViewCellImage") as! homePageCollectionViewCellImage
            navigationController?.pushViewController(navigation, animated: true)
            navigation.null = "https://www.gujaratsamachar.com/news/national/central-government-rejects-us-report-criticising-india-on-religious-freedom"
        }
        else if indexPath.row == 1{
            let navigation = storyboard?.instantiateViewController(withIdentifier: "homePageCollectionViewCellImage") as! homePageCollectionViewCellImage
            navigationController?.pushViewController(navigation, animated: true)
            navigation.null = "https://twitter.com/aajtak/status/1658686528233644032/photo/1"
        }
        else if indexPath.row == 2{
            let navigation = storyboard?.instantiateViewController(withIdentifier: "homePageCollectionViewCellImage") as! homePageCollectionViewCellImage
            navigationController?.pushViewController(navigation, animated: true)
            navigation.null = "https://sandesh.com/sports/pictures-of-the-oval-ground-pitch-before-the-wtc-fina"
        }
        else if indexPath.row == 3{
            let navigation = storyboard?.instantiateViewController(withIdentifier: "homePageCollectionViewCellImage") as! homePageCollectionViewCellImage
            navigationController?.pushViewController(navigation, animated: true)
            navigation.null = "https://twitter.com/mj_scindia/status/1658346023503433728/photo/1"
        }
        else if indexPath.row == 4{
            let navigation = storyboard?.instantiateViewController(withIdentifier: "homePageCollectionViewCellImage") as! homePageCollectionViewCellImage
            navigationController?.pushViewController(navigation, animated: true)
            navigation.null = "https://twitter.com/Cric_crazyjohns/status/1658101990646493184/photo/1"
        }
        else if indexPath.row == 5{
            let navigation = storyboard?.instantiateViewController(withIdentifier: "homePageCollectionViewCellImage") as! homePageCollectionViewCellImage
            navigationController?.pushViewController(navigation, animated: true)
            navigation.null = "https://twitter.com/gujratsamachar/status/1658009165720322049/photo/1"
        }
        else if indexPath.row == 6{
            let navigation = storyboard?.instantiateViewController(withIdentifier: "homePageCollectionViewCellImage") as! homePageCollectionViewCellImage
            navigationController?.pushViewController(navigation, animated: true)
            navigation.null = "https://twitter.com/aajtak/status/1658007449197064193/photo/1"
        }
        else if indexPath.row == 7{
            let navigation = storyboard?.instantiateViewController(withIdentifier: "homePageCollectionViewCellImage") as! homePageCollectionViewCellImage
            navigationController?.pushViewController(navigation, animated: true)
            navigation.null = "https://twitter.com/tv9gujarati/status/1658679173802790912/photo/1"
        }
        else if indexPath.row == 8{
            let navigation = storyboard?.instantiateViewController(withIdentifier: "homePageCollectionViewCellImage") as! homePageCollectionViewCellImage
            navigationController?.pushViewController(navigation, animated: true)
            navigation.null = "https://twitter.com/gujratsamachar/status/1658490581923033089/photo/1"
        }
        else if indexPath.row == 9{
            let navigation = storyboard?.instantiateViewController(withIdentifier: "homePageCollectionViewCellImage") as! homePageCollectionViewCellImage
            navigationController?.pushViewController(navigation, animated: true)
            navigation.null = "https://sandesh.com/world/bidens-quad-meeting-in-australia-canceled-amid-us-debt-crisis"
        }
        else if indexPath.row == 10{
            let navigation = storyboard?.instantiateViewController(withIdentifier: "homePageCollectionViewCellImage") as! homePageCollectionViewCellImage
            navigationController?.pushViewController(navigation, animated: true)
            navigation.null = "https://www.gujaratsamachar.com/news/national/ceir-mobile-tracker-how-this-government-website-will-help-you-track-stolen-mobile"
        }
        else if indexPath.row == 11{
            let navigation = storyboard?.instantiateViewController(withIdentifier: "homePageCollectionViewCellImage") as! homePageCollectionViewCellImage
            navigationController?.pushViewController(navigation, animated: true)
            navigation.null = "https://twitter.com/gujratsamachar/status/1658428979525869570/photo/1"
        }
        else if indexPath.row == 12{
            let navigation = storyboard?.instantiateViewController(withIdentifier: "homePageCollectionViewCellImage") as! homePageCollectionViewCellImage
            navigationController?.pushViewController(navigation, animated: true)
            navigation.null = "https://twitter.com/aajtak/status/1660505182432534528/photo/1"
        }
        else if indexPath.row == 13{
            let navigation = storyboard?.instantiateViewController(withIdentifier: "homePageCollectionViewCellImage") as! homePageCollectionViewCellImage
            navigationController?.pushViewController(navigation, animated: true)
            navigation.null = "https://twitter.com/gujratsamachar/status/1658028014792495105/photo/1"
        }
        else if indexPath.row == 14{
            let navigation = storyboard?.instantiateViewController(withIdentifier: "homePageCollectionViewCellImage") as! homePageCollectionViewCellImage
            navigationController?.pushViewController(navigation, animated: true)
            navigation.null = "https://twitter.com/gujratsamachar/status/1658004886003277824/photo/1"
        }
        else if indexPath.row == 15{
            let navigation = storyboard?.instantiateViewController(withIdentifier: "homePageCollectionViewCellImage") as! homePageCollectionViewCellImage
            navigationController?.pushViewController(navigation, animated: true)
            navigation.null = "https://twitter.com/mufaddal_vohra/status/1658536889283125248/photo/1"
        }
        else if indexPath.row == 16{
            let navigation = storyboard?.instantiateViewController(withIdentifier: "homePageCollectionViewCellImage") as! homePageCollectionViewCellImage
            navigationController?.pushViewController(navigation, animated: true)
            navigation.null = "https://tv9gujarati.com/business/stock/mukesh-ambani-lost-92988265000-rupees-know-what-is-his-net-worth-now-755987.html"
        }
        else if indexPath.row == 17{
            let navigation = storyboard?.instantiateViewController(withIdentifier: "homePageCollectionViewCellImage") as! homePageCollectionViewCellImage
            navigationController?.pushViewController(navigation, animated: true)
            navigation.null = "https://twitter.com/gujratsamachar/status/1658108137969184771/photo/1"
        }
        else if indexPath.row == 18{
            let navigation = storyboard?.instantiateViewController(withIdentifier: "homePageCollectionViewCellImage") as! homePageCollectionViewCellImage
            navigationController?.pushViewController(navigation, animated: true)
            navigation.null = "https://www.aajtak.in/india/maharashtra/story/mumbai-goa-vande-bharat-express-trial-run-route-stoppage-and-other-details-indian-railways-lbs-1696640-2023-05-17"
        }
        else {
            let navigation = storyboard?.instantiateViewController(withIdentifier: "homePageCollectionViewCellImage") as! homePageCollectionViewCellImage
            navigationController?.pushViewController(navigation, animated: true)
            navigation.null = "https://www.gujaratsamachar.com/news/international/russia-claims-to-destroy-us-made-patriot-air-defense-in-ukraine"
        }

        
    }
}
