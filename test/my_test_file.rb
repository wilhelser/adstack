require './adstack'
Adstack::Config.load!("/Users/nathan/rubyapps/appstack/config/adapi.yml", :sandbox)
campaign = Adstack::CampaignService.find(:all, customer_id: 8942487434).sample
extension = campaign.mobile_extension
ad_group = campaign.ad_groups.sample
proximity = campaign.proximity

ad_group = campaign.ad_groups.sample
ads = ad_group.text_ads
ad = ads.sample
keywords = ad_group.keywords
keyword = keywords.sample



require './adstack'
Adstack::Config.load!("/Users/nathan/rubyapps/appstack/config/adapi.yml", :production)
Adstack::Config.set(password: 'ckKQawSUqnyFxEM')
campaign = Adstack::CampaignService.find(:all, customer_id: 1910106216).sample
ad_group = campaign.ad_groups.sample
budget_orders = ad_group.budget_orders
