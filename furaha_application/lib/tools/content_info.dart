class PopularBookModel {
  String title, author, price, image, description;
  int color;

  PopularBookModel(this.title, this.author, this.price, this.image, this.color,
      this.description);
}

List<PopularBookModel> populars = popularBookData
    .map((item) => PopularBookModel(item['title'], item['author'],
        item['price'], item['image'], item['color'], item['description']))
    .toList();

var popularBookData = [
  {
    "title": "Not Today #COVID 19",
    "author": "Dr. Natalie Wanjiru",
    "price": "1499",
    "image": "assets/book1.jpeg",
    "color": 0xFFFFD3B6,
    "description":
        "Amidst the COVID-19 headlines that surround us every hour of the day, it is easy to forget that we have already contained a deadly virus through community engagement and vaccine development and distribution this year. This happened in one of the more complex areas of the world, through collaboration between local and international communities, and through cultural understanding and great scientific progress, including vaccine development and distribution. That virus is Ebola, and that outbreak was in North Kivu, the Democratic Republic of the Congo. Granted, COVID-19 is a different virus than Ebola. Yet there are relevant lessons to be learnt even though at the time of writing this in December 2020 it appears likely that there is light at the end of the COVID tunnel. Several promising and much awaited vaccines are on the horizon and lessons from the handling of the Ebola crisis can make their distribution more safer, more equitable and available for those who need it most, particularly the most vulnerable in fragile contexts. Firstly, a key lesson is listening to affected local communities. Listening well and listening early. That has helped World Vision put COVID-19 into perspective. It is a terrible disease, but it is not the only problem in town, and in many parts of the world it is not even the primary one, as local communities in places such as the DRC are telling us during our recent Good Enough Online Context analysis for Rapid Response GEOCARR context analysis. Through the GEOCARR, World Vision spoke with staff members, partner agencies and communities across three provinces in the East to hear their perspectives on current and coming needs, and likely scenarios for humanitarian action. From those conversations we heard that while the COVID-19 pandemic will have a direct impact on a society with a fragile health system, the economic impact is likely to be felt much more. This in turn is likely to lead to crime and insecurity. And in addition to this, eastern DRC is likely to suffer from natural disasters such as flooding and droughts as is common, as well as other disease outbreaks such as malaria and measles. Those diseases are too many of more concern than COVID-19, as they affect young children more. This reiterated the point that while COVID-19 is arguably the most disruptive global pandemic, at the local level in parts of Africa measles has caused more suffering. Moreover, a lack of clean water may be a bigger concern for a village with an average age of 20 than a virus that mostly affects elderly people. People displaced by conflict may also be more concerned about chronic poverty or an advancing armed group than viral diseases. Listening to communities should be a critical component of agencies’ ongoing and local level context analyses and monitoring, especially given the current level of uncertainty. It will help manage and tolerate the inevitable ambiguity that will be with the world for the foreseeable future and incentivise good decisions."
  },
  {
    "title": "The New World Order",
    "author": "James Noko",
    "price": "1299",
    "image": "assets/book2.jpeg",
    "color": 0xFF2B325C,
    "description": "Hi"
  },
  {
    "title": "Calm Down",
    "author": "Ken Adams",
    "price": "1999",
    "image": "assets/book3.jpg",
    "color": 0xFFF7EA4A,
    "description": "Yoo"
  },
  {
    "title": "Mental Health Matters",
    "author": "Dr. Zuri Walu",
    "price": "899",
    "image": "assets/book4.jpg",
    "color": 0xFF2B325C,
    "description": "Hi"
  },
  {
    "title": "Mental",
    "author": "Jamime Lowe",
    "price": "799",
    "image": "assets/book5.jpg",
    "color": 0xFF2B325C,
    "description": "Hi"
  },
  {
    "title": "It's Okay To Ask For Help",
    "author": "Emily Turner",
    "price": "1099",
    "image": "assets/book6.jpg",
    "color": 0xFF2B325C,
    "description": "Hi"
  }
];
