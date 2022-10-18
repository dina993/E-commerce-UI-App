import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

showStarRating(rating) {
  return SmoothStarRating(
      allowHalfRating: false,
      onRated: (v) {},
      starCount: 5,
      rating: rating,
      size: 20.0,
      isReadOnly: true,
      halfFilledIconData: Icons.blur_on,
      color: Colors.red,
      borderColor: Colors.grey.shade400,
      spacing: 0.0);
}
