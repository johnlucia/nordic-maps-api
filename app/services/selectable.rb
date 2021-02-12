class Selectable

  # https://icons.expo.fyi/
  IONICONS = [["Pin","md-pin"],["Check mark","md-checkmark-circle"],["People","md-people"],
    ["Camera","md-camera"],["Bed","md-bed"],["Megaphone","md-megaphone"],["Map","md-map"],
    ["Restaurant","md-restaurant"],["Flag","md-flag"],["Danger", "alert-circle"],
    ["Bicycle","bicycle"],["Eye","eye"],["Flag 2", "golf"],["Help","help-circle"],
    ["Image","image"],["Information","information-circle"],["Leaf","leaf"],["Location","location"],
    ["Trail Sign","trail-sign"],["Warning","warning"]]

  MATERIAL_COMMUNITY_ICONS = [["Binoculars","binoculars"],["Diamond","cards-diamond"]]

  DOUBLE_DIAMOND = [["Double Diamond","double-diamond"]]

  ICONS = IONICONS + MATERIAL_COMMUNITY_ICONS # + DOUBLE_DIAMOND

  COLORS = ["black","blue","brown","cyan","darkblue","darkgray","darkgreen","gray","green","hotpink",
    "lightblue","lightgreen","magenta","orange","orangered","pink","purple","red","tomato","turquoise",
    "violet","white","yellow"]

  ALL_COLORS = ["aliceblue","antiquewhite","aqua","aquamarine","azure","beige","bisque","black",
    "blanchedalmond","blue","blueviolet","brown","burlywood","cadetblue","chartreuse","chocolate",
    "coral","cornflowerblue","cornsilk","crimson","cyan","darkblue","darkcyan","darkgoldenrod",
    "darkgray","darkgreen","darkgrey","darkkhaki","darkmagenta","darkolivegreen","darkorange",
    "darkorchid","darkred","darksalmon","darkseagreen","darkslateblue","darkslategrey",
    "darkturquoise","darkviolet","deeppink","deepskyblue","dimgray","dimgrey","dodgerblue",
    "firebrick","floralwhite","forestgreen","fuchsia","gainsboro","ghostwhite","gold","goldenrod",
    "gray","green","greenyellow","grey","honeydew","hotpink","indianred","indigo","ivory","khaki",
    "lavender","lavenderblush","lawngreen","lemonchiffon","lightblue","lightcoral","lightcyan",
    "lightgoldenrodyellow","lightgray","lightgreen","lightgrey","lightpink","lightsalmon",
    "lightseagreen","lightskyblue","lightslategrey","lightsteelblue","lightyellow","lime",
    "limegreen","linen","magenta","maroon","mediumaquamarine","mediumblue","mediumorchid",
    "mediumpurple","mediumseagreen","mediumslateblue","mediumspringgreen","mediumturquoise",
    "mediumvioletred","midnightblue","mintcream","mistyrose","moccasin","navajowhite","navy",
    "oldlace","olive","olivedrab","orange","orangered","orchid","palegoldenrod","palegreen",
    "paleturquoise","palevioletred","papayawhip","peachpuff","peru","pink","plum","powderblue",
    "purple","rebeccapurple","red","rosybrown","royalblue","saddlebrown","salmon","sandybrown",
    "seagreen","seashell","sienna","silver","skyblue","slateblue","slategray","snow","springgreen",
    "steelblue","tan","teal","thistle","tomato","turquoise","violet","wheat","white","whitesmoke",
    "yellow","yellowgreen"]

  def self.source_of(icon)
    return "Ionicons" if IONICONS.map(&:last).include?(icon)
    return "MaterialCommunityIcons" if MATERIAL_COMMUNITY_ICONS.map(&:last).include?(icon)
    return "DoubleDiamond" if DOUBLE_DIAMOND.map(&:last).include?(icon)
  end
end
