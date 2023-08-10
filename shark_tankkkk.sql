select * from shark_tank


#total deal respresnt in Season one 

select count(episode_number) from sharkk_tank

#total deal final in this Season

select count(deal) from sharkk_tank
where deal=1

#Top five bottam deal final by amount

select brand_name ,deal_amountt from sharkk_tank
where deal=1
order by deal_amountt desc
limit 5

#Top five deal final by equity

select brand_name ,concat(Total_EQUITY,"",'%') from sharkk_tank
where deal=1
order by Total_EQUITY desc
limit 5

#Top five bottam deal final by equity

select brand_name ,concat(Total_EQUITY,"",'%') from sharkk_tank
where deal=1
order by Total_EQUITY asc
limit 5

#How many deal not final

select count(deal) from sharkk_tank
where deal=0

#Top five deal idea by amout

select idea,deal_amountt from sharkk_tank
where deal=1
order by deal_amountt desc
limit 5

#Top five bottam deal idea by amout

select idea,deal_amountt from sharkk_tank
where deal=1
order by deal_amountt asc
limit 5

 # How may deal final by ashneer 1='final',0='not final

select brand_name,row_number() over(), count(ashneer_deal) over() as total_deal from sharkk_tank
where ashneer_deal=1
group by brand_name
 
# How may deal final by Anupam 1='final',0='not final

select brand_name,row_number() over(), count(anupam_deal) over() as total_deal from sharkk_tank
where anupam_deal=1
group by brand_name

# How may deal final by Aman  1='final',0='not final

select brand_name,row_number() over(), count(aman_deal) over() as total_deal from sharkk_tank
where aman_deal=1
group by brand_name

#Which brand where Ashneer ,Anupam ,Aman invested together 

select brand_name,idea,episode_number from sharkk_tank
where ashneer_deal=1 and anupam_deal=1 and aman_deal=1

#Which brand where Namita,Vineeta and Peyush invested together 

select brand_name,idea,episode_number from sharkk_tank
where  namita_deal=1 and vineeta_deal=1 and peyush_deal=1 

#Which brand where Namita,ghazal and Vineeta  invested together 

select brand_name,idea,episode_number from sharkk_tank
where  namita_deal=1 and vineeta_deal=1 and ghazal_deal=1

#How many episode Ashneer attended 

select count(episode_number) from sharkk_tank
where ashneer_present=1

#How many episode Aman attended 

select count(episode_number) from sharkk_tank
where aman_present=1

#How many episode Namita attended 

select count(episode_number) from sharkk_tank
where namita_present=1

#How many episode where all shark presnted

select count(episode_number) from sharkk_tank
where ashneer_present=1 and aman_present=1 and anupam_present=1 and
namita_present=1 and vineeta_present=1 and peyush_present=1 and ghazal_present=1

#Top 10 deal with biggest pitcher_amount

select brand_name ,pitcher_amount from sharkk_tank
where deal=1
order by pitcher_amount desc
limit 10

#Top 10 deal with lowest pitcher_amount

select brand_name ,pitcher_amount from sharkk_tank
where deal=1
order by pitcher_amount asc
limit 10

#Top 10 deal with biggest deal_valuation

select brand_name ,deal_valuationn from sharkk_tank
where deal=1
order by deal_valuationn desc
limit 10

#Top 10 deal with lowest deal_valuation

select brand_name ,deal_valuationn from sharkk_tank
where deal=1
order by deal_valuationn asc
limit 10

select "Thankyou For Viewing"


 