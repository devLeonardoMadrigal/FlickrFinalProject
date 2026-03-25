//
//  Photo.swift
//  FlickrFinalProject
//
//  Created by Leonardo Madrigal on 3/25/26.
//

import Foundation


struct FlickrResponse: Decodable, Sendable{
    let title: String
    let link: String
    let description: String
    let modified: String
    let generator: String
    let items: [Photo]
}


struct Photo: Decodable, Sendable{
    let title: String
    let link: String
    let media: Media
    let date_taken: String
    let description: String
    let published: String
    let author: String
    let author_id: String
}

struct Media: Decodable, Sendable{
    let m: String
}


/*
 TagLess
 
 {
   "title": "Uploads from everyone",
   "link": "https://www.flickr.com/photos/",
   "description": "",
   "modified": "2026-03-25T18:09:31Z",
   "generator": "https://www.flickr.com",
   "items": [
     {
       "title": "BLOL 7561 @ Chatsworth, IL",
       "link": "https://www.flickr.com/photos/185042307@N07/55167275812/",
       "media": {
         "m": "https://live.staticflickr.com/65535/55167275812_e1a2113cdd_m.jpg"
       },
       "date_taken": "2026-03-02T08:37:38-08:00",
       "description": " \u003Cp\u003E\u003Ca href=\"https://www.flickr.com/people/185042307@N07/\"\u003Erockisland4506\u003C/a\u003E posted a photo:\u003C/p\u003E \u003Cp\u003E\u003Ca href=\"https://www.flickr.com/photos/185042307@N07/55167275812/\" title=\"BLOL 7561 @ Chatsworth, IL\"\u003E\u003Cimg src=\"https://live.staticflickr.com/65535/55167275812_e1a2113cdd_m.jpg\" width=\"240\" height=\"160\" alt=\"BLOL 7561 @ Chatsworth, IL\" /\u003E\u003C/a\u003E\u003C/p\u003E \u003Cp\u003EIt’s just after sunrise in the small community of Chatsworth, as a southbound Bloomer Line loaded grain train bound for the CN interchange in Gibson City, is viewed breaking the early morning silence while crawling through the heart of town. A 1958 built GP9, BLOL 7591, a 1956 built GP10, BLOL 7561, and a LTEX GP38-2, 3801 are in charge of the morning train.\u003C/p\u003E ",
       "published": "2026-03-25T18:09:31Z",
       "author": "nobody@flickr.com (\"rockisland4506\")",
       "author_id": "185042307@N07",
       "tags": ""
     },
     {
       "title": "PB&NE In The Big ‘26",
       "link": "https://www.flickr.com/photos/joshgarfinkel/55167276417/",
       "media": {
         "m": "https://live.staticflickr.com/65535/55167276417_3f5cfc0cd3_m.jpg"
       },
       "date_taken": "2026-03-18T14:17:15-08:00",
       "description": " \u003Cp\u003E\u003Ca href=\"https://www.flickr.com/people/joshgarfinkel/\"\u003Ejoshgarfinkel\u003C/a\u003E posted a photo:\u003C/p\u003E \u003Cp\u003E\u003Ca href=\"https://www.flickr.com/photos/joshgarfinkel/55167276417/\" title=\"PB&amp;NE In The Big ‘26\"\u003E\u003Cimg src=\"https://live.staticflickr.com/65535/55167276417_3f5cfc0cd3_m.jpg\" width=\"240\" height=\"160\" alt=\"PB&amp;NE In The Big ‘26\" /\u003E\u003C/a\u003E\u003C/p\u003E \u003Cp\u003EThe LVRM pull-down job comes across Spillman Drive in Bethlehem with a trio of switchers, including two in their PB&amp;NE paint scheme. I hadn’t photographed this railroad before, and while driving up to Pittston that same day to see the Reading &amp; Northern, I made a quick stop off I-78 to catch them.\u003C/p\u003E ",
       "published": "2026-03-25T18:09:56Z",
       "author": "nobody@flickr.com (\"joshgarfinkel\")",
       "author_id": "194928176@N08",
       "tags": ""
     },
     {
       "title": "Red Bull Display West Brickell",
       "link": "https://www.flickr.com/photos/southbeachcars/55167276482/",
       "media": {
         "m": "https://live.staticflickr.com/65535/55167276482_922518eb42_m.jpg"
       },
       "date_taken": "2026-03-25T13:51:58-08:00",
       "description": " \u003Cp\u003E\u003Ca href=\"https://www.flickr.com/people/southbeachcars/\"\u003EPhillip Pessar\u003C/a\u003E posted a photo:\u003C/p\u003E \u003Cp\u003E\u003Ca href=\"https://www.flickr.com/photos/southbeachcars/55167276482/\" title=\"Red Bull Display West Brickell\"\u003E\u003Cimg src=\"https://live.staticflickr.com/65535/55167276482_922518eb42_m.jpg\" width=\"180\" height=\"240\" alt=\"Red Bull Display West Brickell\" /\u003E\u003C/a\u003E\u003C/p\u003E ",
       "published": "2026-03-25T18:09:58Z",
       "author": "nobody@flickr.com (\"Phillip Pessar\")",
       "author_id": "25955895@N03",
       "tags": "miami supermarket grocery store red bull display west brickell energy drink"
     },
     {
       "title": "🐝",
       "link": "https://www.flickr.com/photos/mylens_photography/55167276867/",
       "media": {
         "m": "https://live.staticflickr.com/65535/55167276867_db68ebabe6_m.jpg"
       },
       "date_taken": "2026-03-24T01:44:09-08:00",
       "description": " \u003Cp\u003E\u003Ca href=\"https://www.flickr.com/people/mylens_photography/\"\u003EMohammed Ezzat ---- محمد عزت\u003C/a\u003E posted a photo:\u003C/p\u003E \u003Cp\u003E\u003Ca href=\"https://www.flickr.com/photos/mylens_photography/55167276867/\" title=\"🐝\"\u003E\u003Cimg src=\"https://live.staticflickr.com/65535/55167276867_db68ebabe6_m.jpg\" width=\"240\" height=\"207\" alt=\"🐝\" /\u003E\u003C/a\u003E\u003C/p\u003E ",
       "published": "2026-03-25T18:10:25Z",
       "author": "nobody@flickr.com (\"Mohammed Ezzat ---- محمد عزت\")",
       "author_id": "76845858@N07",
       "tags": ""
     },
     {
       "title": " ",
       "link": "https://www.flickr.com/photos/155209940@N07/55167276952/",
       "media": {
         "m": "https://live.staticflickr.com/65535/55167276952_1a2a2cab00_m.jpg"
       },
       "date_taken": "2026-03-25T10:30:54-08:00",
       "description": " \u003Cp\u003E\u003Ca href=\"https://www.flickr.com/people/155209940@N07/\"\u003Egreenlineast\u003C/a\u003E posted a photo:\u003C/p\u003E \u003Cp\u003E\u003Ca href=\"https://www.flickr.com/photos/155209940@N07/55167276952/\" title=\" \"\u003E\u003Cimg src=\"https://live.staticflickr.com/65535/55167276952_1a2a2cab00_m.jpg\" width=\"180\" height=\"240\" alt=\" \" /\u003E\u003C/a\u003E\u003C/p\u003E ",
       "published": "2026-03-25T18:10:29Z",
       "author": "nobody@flickr.com (\"greenlineast\")",
       "author_id": "155209940@N07",
       "tags": ""
     },
     {
       "title": "opera_WDRTofNEC4",
       "link": "https://www.flickr.com/photos/204360794@N06/55167277152/",
       "media": {
         "m": "https://live.staticflickr.com/65535/55167277152_1ce261be6b_m.jpg"
       },
       "date_taken": "2026-03-25T11:10:38-08:00",
       "description": " \u003Cp\u003E\u003Ca href=\"https://www.flickr.com/people/204360794@N06/\"\u003Ejohnvega2077sd\u003C/a\u003E posted a photo:\u003C/p\u003E \u003Cp\u003E\u003Ca href=\"https://www.flickr.com/photos/204360794@N06/55167277152/\" title=\"opera_WDRTofNEC4\"\u003E\u003Cimg src=\"https://live.staticflickr.com/65535/55167277152_1ce261be6b_m.jpg\" width=\"240\" height=\"67\" alt=\"opera_WDRTofNEC4\" /\u003E\u003C/a\u003E\u003C/p\u003E ",
       "published": "2026-03-25T18:10:38Z",
       "author": "nobody@flickr.com (\"johnvega2077sd\")",
       "author_id": "204360794@N06",
       "tags": ""
     },
     {
       "title": "FiveM_GTAProcess_IfMwxPa74I",
       "link": "https://www.flickr.com/photos/200918680@N04/55168177866/",
       "media": {
         "m": "https://live.staticflickr.com/65535/55168177866_a61ab8fedb_m.jpg"
       },
       "date_taken": "2026-03-25T11:10:19-08:00",
       "description": " \u003Cp\u003E\u003Ca href=\"https://www.flickr.com/people/200918680@N04/\"\u003Ecaio18anciaes\u003C/a\u003E posted a photo:\u003C/p\u003E \u003Cp\u003E\u003Ca href=\"https://www.flickr.com/photos/200918680@N04/55168177866/\" title=\"FiveM_GTAProcess_IfMwxPa74I\"\u003E\u003Cimg src=\"https://live.staticflickr.com/65535/55168177866_a61ab8fedb_m.jpg\" width=\"162\" height=\"240\" alt=\"FiveM_GTAProcess_IfMwxPa74I\" /\u003E\u003C/a\u003E\u003C/p\u003E ",
       "published": "2026-03-25T18:10:19Z",
       "author": "nobody@flickr.com (\"caio18anciaes\")",
       "author_id": "200918680@N04",
       "tags": ""
     },
     {
       "title": "Missing Our Morning Cuddles",
       "link": "https://www.flickr.com/photos/bigbird3/55168178016/",
       "media": {
         "m": "https://live.staticflickr.com/65535/55168178016_84f238e75d_m.jpg"
       },
       "date_taken": "2026-03-12T08:08:40-08:00",
       "description": " \u003Cp\u003E\u003Ca href=\"https://www.flickr.com/people/bigbird3/\"\u003EBigbird3\u003C/a\u003E posted a photo:\u003C/p\u003E \u003Cp\u003E\u003Ca href=\"https://www.flickr.com/photos/bigbird3/55168178016/\" title=\"Missing Our Morning Cuddles\"\u003E\u003Cimg src=\"https://live.staticflickr.com/65535/55168178016_84f238e75d_m.jpg\" width=\"240\" height=\"188\" alt=\"Missing Our Morning Cuddles\" /\u003E\u003C/a\u003E\u003C/p\u003E \u003Cp\u003EI am in hospital with cellulitis. I had it about twelve years ago. With plenty of intravenous antibiotics I should be as right as rain.\u003C/p\u003E ",
       "published": "2026-03-25T18:10:30Z",
       "author": "nobody@flickr.com (\"Bigbird3\")",
       "author_id": "67605520@N00",
       "tags": ""
     },
     {
       "title": " ",
       "link": "https://www.flickr.com/photos/concordeblinds/55168341238/",
       "media": {
         "m": "https://live.staticflickr.com/65535/55168341238_655e184c23_m.jpg"
       },
       "date_taken": "2026-03-25T11:18:41-08:00",
       "description": " \u003Cp\u003E\u003Ca href=\"https://www.flickr.com/people/concordeblinds/\"\u003EConcorde Blinds, Curtains, Shutters\u003C/a\u003E posted a photo:\u003C/p\u003E \u003Cp\u003E\u003Ca href=\"https://www.flickr.com/photos/concordeblinds/55168341238/\" title=\" \"\u003E\u003Cimg src=\"https://live.staticflickr.com/65535/55168341238_655e184c23_m.jpg\" width=\"180\" height=\"240\" alt=\" \" /\u003E\u003C/a\u003E\u003C/p\u003E ",
       "published": "2026-03-25T18:09:29Z",
       "author": "nobody@flickr.com (\"Concorde Blinds, Curtains, Shutters\")",
       "author_id": "87368653@N05",
       "tags": ""
     },
     {
       "title": "FiveM_GTAProcess_nVh2bcjSV1",
       "link": "https://www.flickr.com/photos/204386841@N02/55168341963/",
       "media": {
         "m": "https://live.staticflickr.com/65535/55168341963_f0a58a6d92_m.jpg"
       },
       "date_taken": "2026-03-25T11:10:08-08:00",
       "description": " \u003Cp\u003E\u003Ca href=\"https://www.flickr.com/people/204386841@N02/\"\u003Efufumail69\u003C/a\u003E posted a photo:\u003C/p\u003E \u003Cp\u003E\u003Ca href=\"https://www.flickr.com/photos/204386841@N02/55168341963/\" title=\"FiveM_GTAProcess_nVh2bcjSV1\"\u003E\u003Cimg src=\"https://live.staticflickr.com/65535/55168341963_f0a58a6d92_m.jpg\" width=\"240\" height=\"135\" alt=\"FiveM_GTAProcess_nVh2bcjSV1\" /\u003E\u003C/a\u003E\u003C/p\u003E ",
       "published": "2026-03-25T18:10:08Z",
       "author": "nobody@flickr.com (\"fufumail69\")",
       "author_id": "204386841@N02",
       "tags": ""
     },
     {
       "title": "Sofia",
       "link": "https://www.flickr.com/photos/ronindunedin/55168419519/",
       "media": {
         "m": "https://live.staticflickr.com/65535/55168419519_58c2486d0d_m.jpg"
       },
       "date_taken": "2026-03-19T14:06:55-08:00",
       "description": " \u003Cp\u003E\u003Ca href=\"https://www.flickr.com/people/ronindunedin/\"\u003Eronindunedin\u003C/a\u003E posted a photo:\u003C/p\u003E \u003Cp\u003E\u003Ca href=\"https://www.flickr.com/photos/ronindunedin/55168419519/\" title=\"Sofia\"\u003E\u003Cimg src=\"https://live.staticflickr.com/65535/55168419519_58c2486d0d_m.jpg\" width=\"135\" height=\"240\" alt=\"Sofia\" /\u003E\u003C/a\u003E\u003C/p\u003E ",
       "published": "2026-03-25T18:05:03Z",
       "author": "nobody@flickr.com (\"ronindunedin\")",
       "author_id": "20724457@N00",
       "tags": ""
     },
     {
       "title": " ",
       "link": "https://www.flickr.com/photos/109280271@N02/55168425394/",
       "media": {
         "m": "https://live.staticflickr.com/65535/55168425394_0083c38a4a_m.jpg"
       },
       "date_taken": "2026-03-21T13:45:25-08:00",
       "description": " \u003Cp\u003E\u003Ca href=\"https://www.flickr.com/people/109280271@N02/\"\u003Eskrankweil\u003C/a\u003E posted a photo:\u003C/p\u003E \u003Cp\u003E\u003Ca href=\"https://www.flickr.com/photos/109280271@N02/55168425394/\" title=\" \"\u003E\u003Cimg src=\"https://live.staticflickr.com/65535/55168425394_0083c38a4a_m.jpg\" width=\"240\" height=\"180\" alt=\" \" /\u003E\u003C/a\u003E\u003C/p\u003E ",
       "published": "2026-03-25T18:09:08Z",
       "author": "nobody@flickr.com (\"skrankweil\")",
       "author_id": "109280271@N02",
       "tags": ""
     },
     {
       "title": "Lineated Woodpecker (Hylatomus lineatus) c",
       "link": "https://www.flickr.com/photos/12639178@N07/55168425689/",
       "media": {
         "m": "https://live.staticflickr.com/65535/55168425689_4bd428ea27_m.jpg"
       },
       "date_taken": "2026-03-25T19:09:21-08:00",
       "description": " \u003Cp\u003E\u003Ca href=\"https://www.flickr.com/people/12639178@N07/\"\u003ENABU|naturgucker\u003C/a\u003E posted a photo:\u003C/p\u003E \u003Cp\u003E\u003Ca href=\"https://www.flickr.com/photos/12639178@N07/55168425689/\" title=\"Lineated Woodpecker (Hylatomus lineatus) c\"\u003E\u003Cimg src=\"https://live.staticflickr.com/65535/55168425689_4bd428ea27_m.jpg\" width=\"188\" height=\"240\" alt=\"Lineated Woodpecker (Hylatomus lineatus) c\" /\u003E\u003C/a\u003E\u003C/p\u003E \u003Cp\u003ELinienspecht (Hylatomus lineatus)\u003Cbr /\u003E (c) Frank Philip Gröhl\u003C/p\u003E ",
       "published": "2026-03-25T18:09:21Z",
       "author": "nobody@flickr.com (\"NABU|naturgucker\")",
       "author_id": "12639178@N07",
       "tags": "ngid195776785 hylatomuslineatus linienspecht"
     },
     {
       "title": "One session. Self portrait on recycled black card in Luminance white pencil. Plain and on the drawing board.",
       "link": "https://www.flickr.com/photos/141786248@N02/55168426189/",
       "media": {
         "m": "https://live.staticflickr.com/65535/55168426189_867d960ed0_m.jpg"
       },
       "date_taken": "2026-03-25T17:48:35-08:00",
       "description": " \u003Cp\u003E\u003Ca href=\"https://www.flickr.com/people/141786248@N02/\"\u003EWuzbug\u003C/a\u003E posted a photo:\u003C/p\u003E \u003Cp\u003E\u003Ca href=\"https://www.flickr.com/photos/141786248@N02/55168426189/\" title=\"One session. Self portrait on recycled black card in Luminance white pencil. Plain and on the drawing board.\"\u003E\u003Cimg src=\"https://live.staticflickr.com/65535/55168426189_867d960ed0_m.jpg\" width=\"177\" height=\"240\" alt=\"One session. Self portrait on recycled black card in Luminance white pencil. Plain and on the drawing board.\" /\u003E\u003C/a\u003E\u003C/p\u003E ",
       "published": "2026-03-25T18:09:43Z",
       "author": "nobody@flickr.com (\"Wuzbug\")",
       "author_id": "141786248@N02",
       "tags": ""
     },
     {
       "title": "♥",
       "link": "https://www.flickr.com/photos/191780635@N08/55168426224/",
       "media": {
         "m": "https://live.staticflickr.com/65535/55168426224_31f4bdcf04_m.jpg"
       },
       "date_taken": "2026-03-25T13:09:45-08:00",
       "description": " \u003Cp\u003E\u003Ca href=\"https://www.flickr.com/people/191780635@N08/\"\u003EFaten Leeder\u003C/a\u003E posted a photo:\u003C/p\u003E \u003Cp\u003E\u003Ca href=\"https://www.flickr.com/photos/191780635@N08/55168426224/\" title=\"♥\"\u003E\u003Cimg src=\"https://live.staticflickr.com/65535/55168426224_31f4bdcf04_m.jpg\" width=\"240\" height=\"140\" alt=\"♥\" /\u003E\u003C/a\u003E\u003C/p\u003E ",
       "published": "2026-03-25T18:09:45Z",
       "author": "nobody@flickr.com (\"Faten Leeder\")",
       "author_id": "191780635@N08",
       "tags": "firestorm secondlife"
     },
     {
       "title": "Milo self portrait",
       "link": "https://www.flickr.com/photos/sethsaupan/55168426569/",
       "media": {
         "m": "https://live.staticflickr.com/65535/55168426569_8b170602d5_m.jpg"
       },
       "date_taken": "2026-03-22T10:59:04-08:00",
       "description": " \u003Cp\u003E\u003Ca href=\"https://www.flickr.com/people/sethsaupan/\"\u003ESeth Saupan\u003C/a\u003E posted a photo:\u003C/p\u003E \u003Cp\u003E\u003Ca href=\"https://www.flickr.com/photos/sethsaupan/55168426569/\" title=\"Milo self portrait\"\u003E\u003Cimg src=\"https://live.staticflickr.com/65535/55168426569_8b170602d5_m.jpg\" width=\"180\" height=\"240\" alt=\"Milo self portrait\" /\u003E\u003C/a\u003E\u003C/p\u003E \u003Cp\u003EMy son had some fun with the iPhone filters 😅\u003C/p\u003E ",
       "published": "2026-03-25T18:10:01Z",
       "author": "nobody@flickr.com (\"Seth Saupan\")",
       "author_id": "171573364@N04",
       "tags": "portrait selfportrait bw iphone"
     },
     {
       "title": "Lisa Brune @ Acoustic Buzz",
       "link": "https://www.flickr.com/photos/leontinne_polaris/55168426919/",
       "media": {
         "m": "https://live.staticflickr.com/65535/55168426919_27b55eee3a_m.jpg"
       },
       "date_taken": "2026-03-25T18:10:20-08:00",
       "description": " \u003Cp\u003E\u003Ca href=\"https://www.flickr.com/people/leontinne_polaris/\"\u003ELeontinne.\u003C/a\u003E posted a photo:\u003C/p\u003E \u003Cp\u003E\u003Ca href=\"https://www.flickr.com/photos/leontinne_polaris/55168426919/\" title=\"Lisa Brune @ Acoustic Buzz\"\u003E\u003Cimg src=\"https://live.staticflickr.com/65535/55168426919_27b55eee3a_m.jpg\" width=\"240\" height=\"124\" alt=\"Lisa Brune @ Acoustic Buzz\" /\u003E\u003C/a\u003E\u003C/p\u003E \u003Cp\u003EVoices of Europe night\u003Cbr /\u003E \u003Cbr /\u003E \u003Ca href=\"http://maps.secondlife.com/secondlife/Tropical/77/8/849\" rel=\"noreferrer nofollow\"\u003EVisit this location at Acoustic Buzz - Where Music Comes to Life! in Second Life\u003C/a\u003E\u003C/p\u003E ",
       "published": "2026-03-25T18:10:20Z",
       "author": "nobody@flickr.com (\"Leontinne.\")",
       "author_id": "76718386@N05",
       "tags": "firestorm secondlife secondlife:region=tropical secondlife:parcel=acousticbuzzwheremusiccomestolife secondlife:x=77 secondlife:y=7 secondlife:z=848"
     },
     {
       "title": "N-2026-03-26-0310_f",
       "link": "https://www.flickr.com/photos/ncsm-sky/55168427114/",
       "media": {
         "m": "https://live.staticflickr.com/65535/55168427114_1ab330641e_m.jpg"
       },
       "date_taken": "2026-03-26T03:10:00-08:00",
       "description": " \u003Cp\u003E\u003Ca href=\"https://www.flickr.com/people/ncsm-sky/\"\u003Encsmsky\u003C/a\u003E posted a photo:\u003C/p\u003E \u003Cp\u003E\u003Ca href=\"https://www.flickr.com/photos/ncsm-sky/55168427114/\" title=\"N-2026-03-26-0310_f\"\u003E\u003Cimg src=\"https://live.staticflickr.com/65535/55168427114_1ab330641e_m.jpg\" width=\"240\" height=\"240\" alt=\"N-2026-03-26-0310_f\" /\u003E\u003C/a\u003E\u003C/p\u003E ",
       "published": "2026-03-25T18:10:32Z",
       "author": "nobody@flickr.com (\"ncsmsky\")",
       "author_id": "97102756@N07",
       "tags": "20260325"
     },
     {
       "title": "Parma26",
       "link": "https://www.flickr.com/photos/200049456@N03/55168566090/",
       "media": {
         "m": "https://live.staticflickr.com/65535/55168566090_0c02cfa27f_m.jpg"
       },
       "date_taken": "2026-01-16T10:52:30-08:00",
       "description": " \u003Cp\u003E\u003Ca href=\"https://www.flickr.com/people/200049456@N03/\"\u003Estauromel69\u003C/a\u003E posted a photo:\u003C/p\u003E \u003Cp\u003E\u003Ca href=\"https://www.flickr.com/photos/200049456@N03/55168566090/\" title=\"Parma26\"\u003E\u003Cimg src=\"https://live.staticflickr.com/65535/55168566090_0c02cfa27f_m.jpg\" width=\"180\" height=\"240\" alt=\"Parma26\" /\u003E\u003C/a\u003E\u003C/p\u003E ",
       "published": "2026-03-25T18:10:05Z",
       "author": "nobody@flickr.com (\"stauromel69\")",
       "author_id": "200049456@N03",
       "tags": "parma italia arquitectura teatro"
     },
     {
       "title": "PXL_20260325_121245583",
       "link": "https://www.flickr.com/photos/55958391@N07/55168566570/",
       "media": {
         "m": "https://live.staticflickr.com/65535/55168566570_2c1b28e078_m.jpg"
       },
       "date_taken": "2026-03-25T13:12:45-08:00",
       "description": " \u003Cp\u003E\u003Ca href=\"https://www.flickr.com/people/55958391@N07/\"\u003Emichchapman2003\u003C/a\u003E posted a photo:\u003C/p\u003E \u003Cp\u003E\u003Ca href=\"https://www.flickr.com/photos/55958391@N07/55168566570/\" title=\"PXL_20260325_121245583\"\u003E\u003Cimg src=\"https://live.staticflickr.com/65535/55168566570_2c1b28e078_m.jpg\" width=\"240\" height=\"135\" alt=\"PXL_20260325_121245583\" /\u003E\u003C/a\u003E\u003C/p\u003E ",
       "published": "2026-03-25T18:10:31Z",
       "author": "nobody@flickr.com (\"michchapman2003\")",
       "author_id": "55958391@N07",
       "tags": ""
     }
   ]
 }
 */



/*
 Tag
 {
   "title": "Recent Uploads tagged porcupine",
   "link": "https://www.flickr.com/photos/tags/porcupine/",
   "description": "",
   "modified": "2026-03-25T00:02:04Z",
   "generator": "https://www.flickr.com",
   "items": [
     {
       "title": "A Porcupine Sitting In A Sassafras Tree, Munching Away",
       "link": "https://www.flickr.com/photos/204366997@N05/55166878881/",
       "media": {
         "m": "https://live.staticflickr.com/65535/55166878881_8f22ac08f4_m.jpg"
       },
       "date_taken": "2025-09-28T12:35:20-08:00",
       "description": " \u003Cp\u003E\u003Ca href=\"https://www.flickr.com/people/204366997@N05/\"\u003Emagicalpeopleoflove\u003C/a\u003E posted a photo:\u003C/p\u003E \u003Cp\u003E\u003Ca href=\"https://www.flickr.com/photos/204366997@N05/55166878881/\" title=\"A Porcupine Sitting In A Sassafras Tree, Munching Away\"\u003E\u003Cimg src=\"https://live.staticflickr.com/65535/55166878881_8f22ac08f4_m.jpg\" width=\"240\" height=\"180\" alt=\"A Porcupine Sitting In A Sassafras Tree, Munching Away\" /\u003E\u003C/a\u003E\u003C/p\u003E ",
       "published": "2026-03-25T00:02:04Z",
       "author": "nobody@flickr.com (\"magicalpeopleoflove\")",
       "author_id": "204366997@N05",
       "tags": "porcupine wildlife wildlifephotography animal animals sassafras sassafrastree forest tree trees leaves leaf munching munch eat eating summer hike hiking nature natural cute hangingout creature"
     },
     {
       "title": "Porcupine.",
       "link": "https://www.flickr.com/photos/132008772@N02/55165887237/",
       "media": {
         "m": "https://live.staticflickr.com/65535/55165887237_351b860b83_m.jpg"
       },
       "date_taken": "2026-03-24T18:19:14-08:00",
       "description": " \u003Cp\u003E\u003Ca href=\"https://www.flickr.com/people/132008772@N02/\"\u003Edevtmefl\u003C/a\u003E posted a photo:\u003C/p\u003E \u003Cp\u003E\u003Ca href=\"https://www.flickr.com/photos/132008772@N02/55165887237/\" title=\"Porcupine.\"\u003E\u003Cimg src=\"https://live.staticflickr.com/65535/55165887237_351b860b83_m.jpg\" width=\"240\" height=\"180\" alt=\"Porcupine.\" /\u003E\u003C/a\u003E\u003C/p\u003E ",
       "published": "2026-03-24T22:31:54Z",
       "author": "nobody@flickr.com (\"devtmefl\")",
       "author_id": "132008772@N02",
       "tags": "porcupine"
     },
     {
       "title": "Porcupine.",
       "link": "https://www.flickr.com/photos/132008772@N02/55167165240/",
       "media": {
         "m": "https://live.staticflickr.com/65535/55167165240_d247005a85_m.jpg"
       },
       "date_taken": "2026-03-24T18:19:06-08:00",
       "description": " \u003Cp\u003E\u003Ca href=\"https://www.flickr.com/people/132008772@N02/\"\u003Edevtmefl\u003C/a\u003E posted a photo:\u003C/p\u003E \u003Cp\u003E\u003Ca href=\"https://www.flickr.com/photos/132008772@N02/55167165240/\" title=\"Porcupine.\"\u003E\u003Cimg src=\"https://live.staticflickr.com/65535/55167165240_d247005a85_m.jpg\" width=\"240\" height=\"180\" alt=\"Porcupine.\" /\u003E\u003C/a\u003E\u003C/p\u003E ",
       "published": "2026-03-24T22:31:09Z",
       "author": "nobody@flickr.com (\"devtmefl\")",
       "author_id": "132008772@N02",
       "tags": "porcupine"
     },
     {
       "title": "Porcupine from the front window.",
       "link": "https://www.flickr.com/photos/132008772@N02/55165884262/",
       "media": {
         "m": "https://live.staticflickr.com/65535/55165884262_14fda4752d_m.jpg"
       },
       "date_taken": "2026-03-24T18:28:46-08:00",
       "description": " \u003Cp\u003E\u003Ca href=\"https://www.flickr.com/people/132008772@N02/\"\u003Edevtmefl\u003C/a\u003E posted a photo:\u003C/p\u003E \u003Cp\u003E\u003Ca href=\"https://www.flickr.com/photos/132008772@N02/55165884262/\" title=\"Porcupine from the front window.\"\u003E\u003Cimg src=\"https://live.staticflickr.com/65535/55165884262_14fda4752d_m.jpg\" width=\"240\" height=\"180\" alt=\"Porcupine from the front window.\" /\u003E\u003C/a\u003E\u003C/p\u003E ",
       "published": "2026-03-24T22:30:14Z",
       "author": "nobody@flickr.com (\"devtmefl\")",
       "author_id": "132008772@N02",
       "tags": "porcupine windowwednesday"
     },
     {
       "title": "Making the rounds.",
       "link": "https://www.flickr.com/photos/132008772@N02/55166784236/",
       "media": {
         "m": "https://live.staticflickr.com/65535/55166784236_490ab5266b_m.jpg"
       },
       "date_taken": "2026-03-24T18:21:26-08:00",
       "description": " \u003Cp\u003E\u003Ca href=\"https://www.flickr.com/people/132008772@N02/\"\u003Edevtmefl\u003C/a\u003E posted a photo:\u003C/p\u003E \u003Cp\u003E\u003Ca href=\"https://www.flickr.com/photos/132008772@N02/55166784236/\" title=\"Making the rounds.\"\u003E\u003Cimg src=\"https://live.staticflickr.com/65535/55166784236_490ab5266b_m.jpg\" width=\"240\" height=\"180\" alt=\"Making the rounds.\" /\u003E\u003C/a\u003E\u003C/p\u003E ",
       "published": "2026-03-24T22:32:11Z",
       "author": "nobody@flickr.com (\"devtmefl\")",
       "author_id": "132008772@N02",
       "tags": "porcupine"
     },
     {
       "title": "Return of the Lawn Trimmer.",
       "link": "https://www.flickr.com/photos/132008772@N02/55167152795/",
       "media": {
         "m": "https://live.staticflickr.com/65535/55167152795_be1082d908_m.jpg"
       },
       "date_taken": "2026-03-24T18:21:44-08:00",
       "description": " \u003Cp\u003E\u003Ca href=\"https://www.flickr.com/people/132008772@N02/\"\u003Edevtmefl\u003C/a\u003E posted a photo:\u003C/p\u003E \u003Cp\u003E\u003Ca href=\"https://www.flickr.com/photos/132008772@N02/55167152795/\" title=\"Return of the Lawn Trimmer.\"\u003E\u003Cimg src=\"https://live.staticflickr.com/65535/55167152795_be1082d908_m.jpg\" width=\"240\" height=\"180\" alt=\"Return of the Lawn Trimmer.\" /\u003E\u003C/a\u003E\u003C/p\u003E ",
       "published": "2026-03-24T22:22:45Z",
       "author": "nobody@flickr.com (\"devtmefl\")",
       "author_id": "132008772@N02",
       "tags": "porcupine"
     },
     {
       "title": "Out for a stroll.",
       "link": "https://www.flickr.com/photos/132008772@N02/55165879767/",
       "media": {
         "m": "https://live.staticflickr.com/65535/55165879767_e910d645d1_m.jpg"
       },
       "date_taken": "2026-03-24T18:19:02-08:00",
       "description": " \u003Cp\u003E\u003Ca href=\"https://www.flickr.com/people/132008772@N02/\"\u003Edevtmefl\u003C/a\u003E posted a photo:\u003C/p\u003E \u003Cp\u003E\u003Ca href=\"https://www.flickr.com/photos/132008772@N02/55165879767/\" title=\"Out for a stroll.\"\u003E\u003Cimg src=\"https://live.staticflickr.com/65535/55165879767_e910d645d1_m.jpg\" width=\"240\" height=\"180\" alt=\"Out for a stroll.\" /\u003E\u003C/a\u003E\u003C/p\u003E ",
       "published": "2026-03-24T22:26:57Z",
       "author": "nobody@flickr.com (\"devtmefl\")",
       "author_id": "132008772@N02",
       "tags": "porcupine"
     },
     {
       "title": "20260322 Porcupine",
       "link": "https://www.flickr.com/photos/bhf3737/55162980276/",
       "media": {
         "m": "https://live.staticflickr.com/65535/55162980276_3e0091842e_m.jpg"
       },
       "date_taken": "2026-03-22T11:11:25-08:00",
       "description": " \u003Cp\u003E\u003Ca href=\"https://www.flickr.com/people/bhf3737/\"\u003EBHF3737\u003C/a\u003E posted a photo:\u003C/p\u003E \u003Cp\u003E\u003Ca href=\"https://www.flickr.com/photos/bhf3737/55162980276/\" title=\"20260322 Porcupine\"\u003E\u003Cimg src=\"https://live.staticflickr.com/65535/55162980276_3e0091842e_m.jpg\" width=\"240\" height=\"171\" alt=\"20260322 Porcupine\" /\u003E\u003C/a\u003E\u003C/p\u003E \u003Cp\u003EA Porcupine at the entrance of its den, at Carburn, #Calgary. Today it was awake, scratching and moving!\u003C/p\u003E ",
       "published": "2026-03-23T02:49:31Z",
       "author": "nobody@flickr.com (\"BHF3737\")",
       "author_id": "135842839@N08",
       "tags": "porcupine animalplanet"
     },
     {
       "title": "Watch, look and listen",
       "link": "https://www.flickr.com/photos/8384220@N06/55158992174/",
       "media": {
         "m": "https://live.staticflickr.com/65535/55158992174_7428cc3765_m.jpg"
       },
       "date_taken": "2026-03-20T13:47:33-08:00",
       "description": " \u003Cp\u003E\u003Ca href=\"https://www.flickr.com/people/8384220@N06/\"\u003Eemrxgs\u003C/a\u003E posted a photo:\u003C/p\u003E \u003Cp\u003E\u003Ca href=\"https://www.flickr.com/photos/8384220@N06/55158992174/\" title=\"Watch, look and listen\"\u003E\u003Cimg src=\"https://live.staticflickr.com/65535/55158992174_7428cc3765_m.jpg\" width=\"240\" height=\"131\" alt=\"Watch, look and listen\" /\u003E\u003C/a\u003E\u003C/p\u003E \u003Cp\u003ESurreal and scary\u003C/p\u003E ",
       "published": "2026-03-20T20:49:32Z",
       "author": "nobody@flickr.com (\"emrxgs\")",
       "author_id": "8384220@N06",
       "tags": "ai sexy creatures surreal squirrel hare falco porcupine lizard duck"
     },
     {
       "title": "Porcupine",
       "link": "https://www.flickr.com/photos/4thies/55156747346/",
       "media": {
         "m": "https://live.staticflickr.com/65535/55156747346_65dfb64742_m.jpg"
       },
       "date_taken": "2012-07-22T15:35:08-08:00",
       "description": " \u003Cp\u003E\u003Ca href=\"https://www.flickr.com/people/4thies/\"\u003Ethies59\u003C/a\u003E posted a photo:\u003C/p\u003E \u003Cp\u003E\u003Ca href=\"https://www.flickr.com/photos/4thies/55156747346/\" title=\"Porcupine\"\u003E\u003Cimg src=\"https://live.staticflickr.com/65535/55156747346_65dfb64742_m.jpg\" width=\"240\" height=\"226\" alt=\"Porcupine\" /\u003E\u003C/a\u003E\u003C/p\u003E \u003Cp\u003EThis is taken at The High Desert Museum at Bend, Oregon. They gave an informative show including the local animals. I was surprised that this porcupine looked soft enough to pet, but those coats of sharp spines, or quills protect them against predators. The quills are modified hairs composed of keratin. \u003Ca href=\"https://highdesertmuseum.org/\" rel=\"noreferrer nofollow\"\u003Ehighdesertmuseum.org/\u003C/a\u003E\u003C/p\u003E ",
       "published": "2026-03-19T17:04:06Z",
       "author": "nobody@flickr.com (\"thies59\")",
       "author_id": "55827906@N02",
       "tags": "oregon bend thehighdesertmuseum yourbestoftodaythroughmyeyes porcupine noaiused"
     },
     {
       "title": "Porcupine (\"Hystrix cristata\")",
       "link": "https://www.flickr.com/photos/115482443@N04/55149010370/",
       "media": {
         "m": "https://live.staticflickr.com/31337/55149010370_8f948e09dc_m.jpg"
       },
       "date_taken": "2026-03-13T19:04:37-08:00",
       "description": " \u003Cp\u003E\u003Ca href=\"https://www.flickr.com/people/115482443@N04/\"\u003Estefano.kustermann\u003C/a\u003E posted a video:\u003C/p\u003E \u003Cp\u003E\u003Ca href=\"https://www.flickr.com/photos/115482443@N04/55149010370/\" title=\"Porcupine (&quot;Hystrix cristata&quot;)\"\u003E\u003Cimg src=\"https://live.staticflickr.com/31337/55149010370_8f948e09dc_m.jpg\" width=\"240\" height=\"133\" alt=\"Porcupine (&quot;Hystrix cristata&quot;)\" /\u003E\u003C/a\u003E\u003C/p\u003E \u003Cp\u003ETaken at Caffarella Park, Rome, Italy\u003Cbr /\u003E Trail Camera Ceyomur CY 75\u003Cbr /\u003E [dscf0278_vqhIV11r]\u003C/p\u003E ",
       "published": "2026-03-15T12:51:37Z",
       "author": "nobody@flickr.com (\"stefano.kustermann\")",
       "author_id": "115482443@N04",
       "tags": "parcodellacaffarella caffarella fototrappola istrice trailcamera ceyomurcy75 cy75 porcupine hystrixcristata"
     },
     {
       "title": "Porcupine (\"Hystrix cristata\")",
       "link": "https://www.flickr.com/photos/115482443@N04/55147446389/",
       "media": {
         "m": "https://live.staticflickr.com/31337/55147446389_b9e57ae907_m.jpg"
       },
       "date_taken": "2026-03-05T21:29:24-08:00",
       "description": " \u003Cp\u003E\u003Ca href=\"https://www.flickr.com/people/115482443@N04/\"\u003Estefano.kustermann\u003C/a\u003E posted a video:\u003C/p\u003E \u003Cp\u003E\u003Ca href=\"https://www.flickr.com/photos/115482443@N04/55147446389/\" title=\"Porcupine (&quot;Hystrix cristata&quot;)\"\u003E\u003Cimg src=\"https://live.staticflickr.com/31337/55147446389_b9e57ae907_m.jpg\" width=\"240\" height=\"135\" alt=\"Porcupine (&quot;Hystrix cristata&quot;)\" /\u003E\u003C/a\u003E\u003C/p\u003E \u003Cp\u003ETaken at Caffarella Park, Rome, Italy\u003Cbr /\u003E Trail Camera Ceyomur CY 75\u003Cbr /\u003E [DSCF0182]\u003C/p\u003E ",
       "published": "2026-03-14T16:58:12Z",
       "author": "nobody@flickr.com (\"stefano.kustermann\")",
       "author_id": "115482443@N04",
       "tags": "hystrixcristata istrice cy75 ceyomurcy75 parcodellacaffarella caffarella trailcamera fototrappola porcupine"
     },
     {
       "title": "DSC03736",
       "link": "https://www.flickr.com/photos/9125615@N02/55144886008/",
       "media": {
         "m": "https://live.staticflickr.com/65535/55144886008_4b22fc27ab_m.jpg"
       },
       "date_taken": "2025-12-30T11:35:55-08:00",
       "description": " \u003Cp\u003E\u003Ca href=\"https://www.flickr.com/people/9125615@N02/\"\u003Esylviagreve\u003C/a\u003E posted a photo:\u003C/p\u003E \u003Cp\u003E\u003Ca href=\"https://www.flickr.com/photos/9125615@N02/55144886008/\" title=\"DSC03736\"\u003E\u003Cimg src=\"https://live.staticflickr.com/65535/55144886008_4b22fc27ab_m.jpg\" width=\"240\" height=\"160\" alt=\"DSC03736\" /\u003E\u003C/a\u003E\u003C/p\u003E ",
       "published": "2026-03-13T05:05:31Z",
       "author": "nobody@flickr.com (\"sylviagreve\")",
       "author_id": "9125615@N02",
       "tags": "2025 cougarmountainzoo fern porcupine prehensiletailedporcupine issaquah washington unitedstates"
     },
     {
       "title": "Porcupine Quill",
       "link": "https://www.flickr.com/photos/204339768@N06/55135297904/",
       "media": {
         "m": "https://live.staticflickr.com/65535/55135297904_39a8056136_m.jpg"
       },
       "date_taken": "2025-11-07T23:53:16-08:00",
       "description": " \u003Cp\u003E\u003Ca href=\"https://www.flickr.com/people/204339768@N06/\"\u003Eitalymodena\u003C/a\u003E posted a photo:\u003C/p\u003E \u003Cp\u003E\u003Ca href=\"https://www.flickr.com/photos/204339768@N06/55135297904/\" title=\"Porcupine Quill\"\u003E\u003Cimg src=\"https://live.staticflickr.com/65535/55135297904_39a8056136_m.jpg\" width=\"240\" height=\"179\" alt=\"Porcupine Quill\" /\u003E\u003C/a\u003E\u003C/p\u003E \u003Cp\u003Eclose up of the quills of the porcupine\u003C/p\u003E ",
       "published": "2026-03-08T05:29:40Z",
       "author": "nobody@flickr.com (\"italymodena\")",
       "author_id": "204339768@N06",
       "tags": "porcupine close up quills"
     },
     {
       "title": "Young porcupine eating wood",
       "link": "https://www.flickr.com/photos/tambako/55132666817/",
       "media": {
         "m": "https://live.staticflickr.com/65535/55132666817_c7c8f4c7c5_m.jpg"
       },
       "date_taken": "2026-01-17T12:35:52-08:00",
       "description": " \u003Cp\u003E\u003Ca href=\"https://www.flickr.com/people/tambako/\"\u003ETambako the Jaguar\u003C/a\u003E posted a photo:\u003C/p\u003E \u003Cp\u003E\u003Ca href=\"https://www.flickr.com/photos/tambako/55132666817/\" title=\"Young porcupine eating wood\"\u003E\u003Cimg src=\"https://live.staticflickr.com/65535/55132666817_c7c8f4c7c5_m.jpg\" width=\"240\" height=\"135\" alt=\"Young porcupine eating wood\" /\u003E\u003C/a\u003E\u003C/p\u003E \u003Cp\u003EAnother photo of a young porcupine of the Zürich zoo!\u003C/p\u003E ",
       "published": "2026-03-07T11:00:09Z",
       "author": "nobody@flickr.com (\"Tambako the Jaguar\")",
       "author_id": "8070463@N03",
       "tags": "africanporcupine animal close cold d850 eating face food mammal nikon porcupine portrait profile quills snow switzerland winter wood young zoo zürich"
     },
     {
       "title": "North American porcupine",
       "link": "https://www.flickr.com/photos/204283240@N05/55131305040/",
       "media": {
         "m": "https://live.staticflickr.com/65535/55131305040_bafaca0559_m.jpg"
       },
       "date_taken": "2017-04-18T09:12:29-08:00",
       "description": " \u003Cp\u003E\u003Ca href=\"https://www.flickr.com/people/204283240@N05/\"\u003Esarah.foote\u003C/a\u003E posted a photo:\u003C/p\u003E \u003Cp\u003E\u003Ca href=\"https://www.flickr.com/photos/204283240@N05/55131305040/\" title=\"North American porcupine\"\u003E\u003Cimg src=\"https://live.staticflickr.com/65535/55131305040_bafaca0559_m.jpg\" width=\"240\" height=\"180\" alt=\"North American porcupine\" /\u003E\u003C/a\u003E\u003C/p\u003E \u003Cp\u003ETitle: North American porcupine\u003Cbr /\u003E Description: Close-up image of a North American porcupine\u003Cbr /\u003E Date Created: 2017-04-18\u003Cbr /\u003E Creator: Sarah Foote\u003Cbr /\u003E Format: Image/jpeg\u003Cbr /\u003E Subject: Wild, Mammal, North, American, Porcupine\u003Cbr /\u003E Taxon.scientificName: Erethizon dorsatum\u003Cbr /\u003E Taxon.vernacularName: North American porcupine\u003Cbr /\u003E Identifier: C12QSJK01SM\u003Cbr /\u003E Rights: CC BY \u003Ca href=\"https://creativecommons.org/licenses/by/2.0/\" rel=\"noreferrer nofollow\"\u003Ecreativecommons.org/licenses/by/2.0/\u003C/a\u003E\u003Cbr /\u003E Location: Michigan\u003C/p\u003E ",
       "published": "2026-03-05T20:48:46Z",
       "author": "nobody@flickr.com (\"sarah.foote\")",
       "author_id": "204283240@N05",
       "tags": "porcupine zoo mammal north american"
     },
     {
       "title": "140A6821",
       "link": "https://www.flickr.com/photos/wcdumonts/55130773613/",
       "media": {
         "m": "https://live.staticflickr.com/65535/55130773613_61934292e7_m.jpg"
       },
       "date_taken": "2026-02-28T14:35:25-08:00",
       "description": " \u003Cp\u003E\u003Ca href=\"https://www.flickr.com/people/wcdumonts/\"\u003EMark Dumont\u003C/a\u003E posted a photo:\u003C/p\u003E \u003Cp\u003E\u003Ca href=\"https://www.flickr.com/photos/wcdumonts/55130773613/\" title=\"140A6821\"\u003E\u003Cimg src=\"https://live.staticflickr.com/65535/55130773613_61934292e7_m.jpg\" width=\"240\" height=\"160\" alt=\"140A6821\" /\u003E\u003C/a\u003E\u003C/p\u003E ",
       "published": "2026-03-05T17:25:21Z",
       "author": "nobody@flickr.com (\"Mark Dumont\")",
       "author_id": "23661161@N02",
       "tags": "cincinnati dumont mammal mark porcupine rico zoo"
     },
     {
       "title": "140A6855",
       "link": "https://www.flickr.com/photos/wcdumonts/55130975195/",
       "media": {
         "m": "https://live.staticflickr.com/65535/55130975195_5d47baf1f2_m.jpg"
       },
       "date_taken": "2026-02-28T14:48:08-08:00",
       "description": " \u003Cp\u003E\u003Ca href=\"https://www.flickr.com/people/wcdumonts/\"\u003EMark Dumont\u003C/a\u003E posted a photo:\u003C/p\u003E \u003Cp\u003E\u003Ca href=\"https://www.flickr.com/photos/wcdumonts/55130975195/\" title=\"140A6855\"\u003E\u003Cimg src=\"https://live.staticflickr.com/65535/55130975195_5d47baf1f2_m.jpg\" width=\"175\" height=\"240\" alt=\"140A6855\" /\u003E\u003C/a\u003E\u003C/p\u003E ",
       "published": "2026-03-05T17:26:29Z",
       "author": "nobody@flickr.com (\"Mark Dumont\")",
       "author_id": "23661161@N02",
       "tags": "cincinnati dumont mammal mark porcupine rico zoo"
     },
     {
       "title": "140A6860",
       "link": "https://www.flickr.com/photos/wcdumonts/55130975715/",
       "media": {
         "m": "https://live.staticflickr.com/65535/55130975715_4e34d801cd_m.jpg"
       },
       "date_taken": "2026-02-28T14:50:27-08:00",
       "description": " \u003Cp\u003E\u003Ca href=\"https://www.flickr.com/people/wcdumonts/\"\u003EMark Dumont\u003C/a\u003E posted a photo:\u003C/p\u003E \u003Cp\u003E\u003Ca href=\"https://www.flickr.com/photos/wcdumonts/55130975715/\" title=\"140A6860\"\u003E\u003Cimg src=\"https://live.staticflickr.com/65535/55130975715_4e34d801cd_m.jpg\" width=\"228\" height=\"240\" alt=\"140A6860\" /\u003E\u003C/a\u003E\u003C/p\u003E ",
       "published": "2026-03-05T17:26:55Z",
       "author": "nobody@flickr.com (\"Mark Dumont\")",
       "author_id": "23661161@N02",
       "tags": "cincinnati dumont mammal mark porcupine rico zoo"
     },
     {
       "title": "140A6824",
       "link": "https://www.flickr.com/photos/wcdumonts/55129694752/",
       "media": {
         "m": "https://live.staticflickr.com/65535/55129694752_2370380f30_m.jpg"
       },
       "date_taken": "2026-02-28T14:36:19-08:00",
       "description": " \u003Cp\u003E\u003Ca href=\"https://www.flickr.com/people/wcdumonts/\"\u003EMark Dumont\u003C/a\u003E posted a photo:\u003C/p\u003E \u003Cp\u003E\u003Ca href=\"https://www.flickr.com/photos/wcdumonts/55129694752/\" title=\"140A6824\"\u003E\u003Cimg src=\"https://live.staticflickr.com/65535/55129694752_2370380f30_m.jpg\" width=\"240\" height=\"160\" alt=\"140A6824\" /\u003E\u003C/a\u003E\u003C/p\u003E ",
       "published": "2026-03-05T17:25:40Z",
       "author": "nobody@flickr.com (\"Mark Dumont\")",
       "author_id": "23661161@N02",
       "tags": "cincinnati dumont mammal mark porcupine rico zoo"
     }
   ]
 }
 */
