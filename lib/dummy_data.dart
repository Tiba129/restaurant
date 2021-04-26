import 'package:flutter/material.dart';
import 'food.dart';
import 'category.dart';
import 'meal.dart';
import 'details.dart';

const Dummy_Categories = const [
  Category(id: 'c1', title: 'قائمة الطعام', img: 'images/1.jpg'),
  Category(id: 'c2', title: 'حجز طاولة', img: 'images/3.jpg'),
  Category(id: 'c3', title: 'الاشعارات', img: 'images/6.jpg'),
  Category(id: 'c4', title: 'اتصل بنا', img: 'images/5.jpg'),
];

const Dummy_meals = const [
  Meal(
      id: 'mb1',
      image: '',
      title: 'الافطار الصباحي',
      categories: ['c1'],
      color: Colors.red),
  Meal(
      id: 'mb2',
      image: '',
      title: 'الحساء',
      categories: ['c1'],
      color: Colors.red),
  Meal(
      id: 'mb3',
      image: '',
      title: 'المقبلات',
      categories: ['c1'],
      color: Colors.red),
  Meal(
      id: 'mb4',
      image: '',
      title: 'المشروبات',
      categories: ['c1'],
      color: Colors.red),
  Meal(
      id: 'mb4',
      image: '',
      title: 'اكلات اللحوم',
      categories: ['c1'],
      color: Colors.red),
  Meal(
      id: 'mb6',
      image: '',
      title: 'اكلات الدجاج',
      categories: ['c1'],
      color: Colors.red),
  Meal(
      id: 'mb7',
      image: '',
      title: "القسم الايطالي",
      categories: ['c1'],
      color: Colors.red),
  Meal(
      id: 'mb8',
      image: '',
      title: 'الاكلات البحرية ',
      categories: ['c1'],
      color: Colors.red),
  Meal(
      id: 'mb9',
      image: '',
      title: 'السندويشات',
      categories: ['c1'],
      color: Colors.red),
  Meal(
      id: 'mb10',
      image: '',
      title: 'وجبات الاطفال',
      categories: ['c1'],
      color: Colors.red),
  Meal(
      id: 'm11',
      image: '',
      title: 'العصائر',
      categories: ['c1'],
      color: Colors.red),
  Meal(
      id: 'm12',
      image: '',
      title: 'الحلويات والمكسرات',
      categories: ['c1'],
      color: Colors.red),
  /* Meal(id: 'm2', image: '', title: '', categories: ['c2'], color: Colors.red),
  Meal(id: 'm3', image: '', title: '', categories: ['c3'], color: Colors.red),
  Meal(id: 'm4', image: '', title: '', categories: ['c6'], color: Colors.red),*/
];

const Dummy_food = const [
  Food(
    id: 'mbc1',
    disc: 'بيض',
    img: 'images/12.jpg',
    idselect: ['mb1'],
    price: '6000 ID',
  ),
  Food(
      id: 'mbc2',
      disc: 'فطور صحي',
      img: 'images/13.jpg',
      idselect: ['mb1'],
      price: '10.000 ID'),
  Food(
      id: 'mbc3',
      disc: 'وجبة نانار',
      img: 'images/14.jpg',
      idselect: ['mb1'],
      price: '20.000 ID'),
  Food(
      id: 'mbc4',
      disc: 'حساء عدس',
      img: 'images/15.jpg',
      idselect: ['mb2'],
      price: '4000 ID'),
  Food(
      id: 'mbc5',
      disc: 'حساء شوفان',
      img: 'images/16.jpg',
      idselect: ['mb2'],
      price: '4.500 ID'),
  Food(
      id: 'mbc6',
      disc: 'حساء فطر',
      img: 'images/17.jpg',
      idselect: ['mb2'],
      price: '3000 ID'),
];
const Dummy_details = const [
  Details(
      id: 'mbcd1',
      discrp: 'بيض',
      detId: ['mbc1'],
      ig: 'images/12.jpg',
      prc: '6000 ID'),
  Details(
    id: 'mbcd2',
    detId: ['mbc2'],
    discrp: 'فطور صحي',
    ig: 'images/13.jpg',
    prc: '10.000 ID',
  ),
  Details(
    id: 'mbcd3',
    detId: ['mbc3'],
    discrp: 'وجبة نانار',
    ig: 'images/14.jpg',
    prc: '20.000 ID',
  ),
  Details(
    id: 'mbcd4',
    detId: ['mbc4'],
    discrp: 'حساء عدس',
    ig: 'images/15.jpg',
    prc: '4000 ID',
  ),
  Details(
    id: 'mbcd5',
    detId: ['mbc5'],
    discrp: 'حساء شوفان',
    ig: 'images/16.jpg',
    prc: '4.500 ID',
  ),
  Details(
    id: 'mbcd6',
    detId: ['mbc6'],
    discrp: 'حساء فطر',
    ig: 'images/17.jpg',
    prc: '3000 ID',
  ),
];
