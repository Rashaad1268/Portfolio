import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const projectsData = [
  {
    'name': 'Rectilearn',
    'github_url': 'https://github.com/Sanyok6/rectilearn',
    'description': ('Rectilearn is a website I made with my friends which '
                    'aims to make studying less ordinary. We made it for a '
                    'codejam and later realized its full potential'),
    'site': 'https://rectilearn.vercel.app/',
  },
  {
    'name': 'Chat App',
    'github_url':
        'https://github.com/Rashaad1268/Chat-app/tree/mobile_frontend',
    'description':
        ('A chat app made using django for the backend and flutter for the frontend. '
            'Postgresql is used as the database and redis is used as the caching layer'),
  },
  {
    'name': 'StonkFish',
    'github_url': 'https://github.com/Rashaad1268/StonkFish',
    'description':
        ('A chess engine written using python. The aim is to get an elo above 2000. '
            "I'll write another version of it in C when I get good at the C programming language"),
  },
  {
    'name': 'YouTube Clone',
    'github_url': 'https://github.com/Rashaad1268/YouTube-clone',
    'description': ('A YouTube Clone made using django, html and css. '
        'This is a project I made in early 2021 in my free time'),
  },
  {
    'name': 'PgORM',
    'github_url': 'https://github.com/Rashaad1268/PostgreSQL-Python-ORM',
    'description':
        ('PgOrm makes using postgresql in python projects easier then ever before.\n'
            "NOTE: It is not production ready since it doesn't have as many optimizations"
            'as other ORMs have'),
  },
];

const double technologyIconSize = 80;

List<Map> technologiesData = [
  {
    'name': 'Python',
    'icon': const FaIcon(FontAwesomeIcons.python, size: technologyIconSize),
    'description': ('I am proficient in Python. I have worked with a wide '
        'range of modules like django, scikit-learn, numpy and more'),
  },
  {
    'name': 'Relational\nDatabases',
    'icon': const FaIcon(FontAwesomeIcons.database, size: technologyIconSize),
    'description': ('I have worked with relational databases like'
        'Postgresql and SQLite'),
  },
  {
    'name': 'Dart & Flutter',
    'icon': const Icon(Icons.flutter_dash, size: technologyIconSize),
    'description': ('I can make well designed, clean '
                    'and responsive apps using Flutter'),
  },
  {
    'name': 'Data Science\nlibraries',
    'icon': const Icon(Icons.data_array, size: technologyIconSize),
    'description': ('I have worked with data science libraries like'
        'numpy, pandas, scikit-learn and more'),
  },
  {
    'name': 'JavaScript and\nTypeScript',
    'description': ('I am proficient in JS and TS. '
                    "I prefer TS because it's easier to debug"),
    'icon': const FaIcon(FontAwesomeIcons.code, size: technologyIconSize),
  },
  {
    'name': 'React.js',
    'icon': const FaIcon(FontAwesomeIcons.react, size: technologyIconSize),
    'description': ('I can make web apps using React.js with TypeScript')
  },
];

const githubLink = 'https://github.com/Rashaad1268';
const redditLink = 'https://www.reddit.com/user/West_Assist_3303';
const youtubeLink = 'https://www.youtube.com/channel/UCV6UFqGfSHuWVph5BckMf9g';
const twitterLink = 'https://twitter.com/RashaadAkbar';
const projectRepoLink = 'https://github.com/Rashaad1268/Portfolio';
const discordLink = 'https://discord.com/invite/jNqjYnTAV4';
