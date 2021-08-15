# README

Github: https://github.com/danielidr/catalogue

## Tipos de producto

Se crearon 2 tablas para manejar los tipos de productos y que se puedan asociar las imagenes segun el tipo: physical_products y digital_products

```ruby
class Product < ApplicationRecord
  has_one :physical_product
  has_one :digital_product
end

class PhysicalProduct < ApplicationRecord
  has_many_attached :images
  belongs_to :product
end

class DigitalProduct < ApplicationRecord
  has_one_attached :image
  belongs_to :product
end
```

## Medios de pago

Para los medios de pago se creo una relación polimorfica entre un modelo llamado Payments y los modelos para cada tipo de pago: Stripe, Paypal y Transbank. Para el caso de transbank, se creó en su tabla una columna llamada method de tipo integer, para poder seleccionar en el formulario el tipo de pago a traves de un enum.

```ruby
class Payment < ApplicationRecord
    belongs_to :paymentable, polymorphic: true
end

class Stripe < ApplicationRecord
    has_many :payments, as: :paymentable
end

class Paypal < ApplicationRecord
    has_many :payments, as: :paymentable
end

class Transbank < ApplicationRecord
    has_many :payments, as: :paymentable
    enum method: ["Credit card", "Webpay", "Oneclick"]
end
```

## Simular los medios de pago

Se crearon los modelos y las asociaciones según el diagrama para poder hacer el registro de los pagos

![GitHub Logo](/app/assets/images/AttachmentsDiagram.jpg)

Se creo un formulario para el modelo de Payment, donde se debe seleccionar la orden según su numero y se le asigna el pago según corresponda.