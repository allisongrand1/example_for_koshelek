
import '/model/button.dart';

Map<Button, List<Button>> mainMenuSections = <Button, List<Button>>{
  const Button(name: "Компания"): [
    const Button(name: "О нас"),
    const Button(name: "Реквизиты"),
    const Button(name: "Сертификаты"),
    const Button(name: "Сборка шкафов"),
    Button(name: "Карьера", url: Uri.parse("")),
  ],
  const Button(name: "Продукты"): const [
    Button(name: "Прайс-лист"),

  ],
  const Button(name: "Контакты"): const [
    Button(name: "Екатеринбург"),
    Button(name: "Москва"),
    Button(name: "Челябинск"),
    Button(name: "Пермь"),
    Button(name: "Тюмень"),
  ],
  
};
