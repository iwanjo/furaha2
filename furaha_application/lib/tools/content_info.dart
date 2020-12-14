class PopularBookModel {
  String title, author, image, description;
  int color;

  PopularBookModel(
      this.title, this.author, this.image, this.color, this.description);
}

List<PopularBookModel> populars = popularBookData
    .map((item) => PopularBookModel(item['title'], item['author'],
        item['image'], item['color'], item['description']))
    .toList();

var popularBookData = [
  {
    "title": "Not Today #COVID 19",
    "author": "Dr. Natalie Wanjiru",
    "image": "assets/book1.jpeg",
    "color": 0xFFFFD3B6,
    "description":
        "Amidst the COVID-19 headlines that surround us every hour of the day, it is easy to forget that we have already contained a deadly virus through community engagement and vaccine development and distribution this year. \n\nThis happened in one of the more complex areas of the world, through collaboration between local and international communities, and through cultural understanding and great scientific progress, including vaccine development and distribution. That virus is Ebola, and that outbreak was in North Kivu, the Democratic Republic of the Congo. \n\nGranted, COVID-19 is a different virus than Ebola. Yet there are relevant lessons to be learnt even though at the time of writing this in December 2020 it appears likely that there is light at the end of the COVID tunnel. Several promising and much awaited vaccines are on the horizon and lessons from the handling of the Ebola crisis can make their distribution more safer, more equitable and available for those who need it most, particularly the most vulnerable in fragile contexts. \n\nFirstly, a key lesson is listening to affected local communities. Listening well and listening early. That has helped World Vision put COVID-19 into perspective. It is a terrible disease, but it is not the only problem in town, and in many parts of the world it is not even the primary one, as local communities in places such as the DRC are telling us during our recent Good Enough Online Context analysis for Rapid Response GEOCARR context analysis."
  },
  {
    "title": "The New World Order",
    "author": "James Noko",
    "image": "assets/book2.jpeg",
    "color": 0xFF2B325C,
    "description":
        "In chaos theory, the butterfly effect describes a small change that can have massive, unpredictable consequences. An insect flaps its wings and, weeks later, causes a tornado. \n\nThe coronavirus is more like an earthquake, with aftershocks that will permanently reshape the world. \n\nIf we are lucky, the world will pass “peak virus” within the next six months. But the economy, governments, and social institutions will take years to recover in the best-case scenario. Indeed, rather than even speak of “recovery,” which implies a return to how things were, it would be wise to project what new direction civilization will take. That too will be a bumpy ride. The next 3-5 years will remind us that COVID-19 was the lightning before the thunder. \n\nOf course, it is difficult to draw straight lines between cause and effect. With the benefit of hindsight, we can trace how the Treaty of Versailles and the Great Depression enabled the rise of Hitler. But in the hyperconnected world of today, dense global networks enable butterfly effects to ripple and amplify far more rapidly.\n\nCan we forward-engineer probable scenarios emerging from the consequences of today’s pandemic? Given how stretched our institutions are in coping with the current crisis, few tasks could be more urgent in helping us prepare for the future. It is easy to predict further doom after a devastating phenomenon such as the coronavirus. Reality will likely turn out differently—and it certainly can."
  },
  {
    "title": "Calm Down",
    "author": "Ken Adams",
    "image": "assets/book3.jpg",
    "color": 0xFFFFE082,
    "description":
        "We all worry and get upset from time to time. It’s a normal part of life, right? But what happens when that anxiety or anger takes over, and you can’t calm down? Being able to calm yourself in the moment is often easier said than done. \n\nThat’s why having a few strategies you’re familiar with can help you when you’re feeling anxious or angry."
  },
  {
    "title": "Mental Health Matters",
    "author": "Dr. Zuri Walu",
    "image": "assets/book4.jpg",
    "color": 0xFFA5D6A7,
    "description":
        "Mental health matters. Taking care of our mental health aids in our resilience and recovery from anything that happens. \n\nAnyone can have a bad day, but it doesn’t mean that it’s a bad life. How we respond to it and take care of our mental health are what’s important.\n\nMental health is important at every stage of our lives. It encompasses our overall wellbeing and affects our lives in many ways."
  },
  {
    "title": "Mental",
    "author": "Jamime Lowe",
    "image": "assets/book5.jpg",
    "color": 0xFFB2DFDB,
    "description":
        "Mental wellness tips are important to know when working on improving your mental wellness. Especially when you suffer from anxiety, depression, stress or a mental health disorder, it is critical to have some mental health wellness tips to use throughout the day to manage your condition. The mental wellness tips below can be highly beneficial in improving your own mental health wellness."
  },
  {
    "title": "It's Okay To Ask For Help",
    "author": "Emily Turner",
    "image": "assets/book6.jpg",
    "color": 0xFFC5CAE9,
    "description":
        "The only mistake you can make is not asking for help. —Sandeep Jauhar.\n\nDo you ask for help when you don’t know how to do something or can’t manage it on your own? Or, rather than look stupid and incompetent, do you pretend like you know what you’re doing? Perhaps you think asking for help is a sign of weakness; that if you ask for help you’re admitting you’re inadequate in some way; that you lack knowledge, skill or experience to do something yourself. You don’t want anyone to see that you’re struggling; you want people to think that you’re in control and can handle things."
  }
];
