Feature: Create a new door item
  In order to add new door to db
  As a site administrator
  I want to be able to create, view and manage door item records

Background: 
	 Given I am logged into the site as an administrator

Scenario: Create a new door item record with full data
  When I go to page add product
  And I enter the following information
	| Name                         | MetaTitle                    | SeoTitle                               | Code  | Description                                   | Image                   | Price   | PromotionPrice | CategoryID | ProductDetail                                 | Waranty | MetaKeywords                 | MetaDescriptions                                                          | Status | ViewCount |
	| Cửa đi KINGLONG 2 cánh trượt | Cửa đi KINGLONG 2 cánh trượt | Cửa đi KINGLONG 2 cánh trượt tại TPHCM | KL001 | Cửa đi KINGLONG 2 cánh trượt , chất lượng cao | /Assets/Images/logo.jpg | 1900000 | 1890000        | 1          | Cửa đi KINGLONG 2 cánh trượt , chất lượng cao | 12      | Cửa đi KINGLONG 2 cánh trượt | Cửa đi KINGLONG 2 cánh trượt tại TPHCM, quận 10, quận Thủ đức, Bình Thạnh | true   | 1000      |
  And I click the "Thêm" button
  Then I should see view "Danh Sách Sản Phẩm"

 Scenario: Create a new door item record with empty name door
  When I go to page add product
  And I enter the following information with empty name door
	| MetaTitle                    | SeoTitle                               | Code  | Description                                   | Image                   | Price   | PromotionPrice | CategoryID | ProductDetail                                 | Waranty | MetaKeywords                 | MetaDescriptions                                                          | Status | ViewCount |
	| Cửa đi KINGLONG 2 cánh trượt | Cửa đi KINGLONG 2 cánh trượt tại TPHCM | KL001 | Cửa đi KINGLONG 2 cánh trượt , chất lượng cao | /Assets/Images/logo.jpg | 1900000 | 1890000        | 1          | Cửa đi KINGLONG 2 cánh trượt , chất lượng cao | 12      | Cửa đi KINGLONG 2 cánh trượt | Cửa đi KINGLONG 2 cánh trượt tại TPHCM, quận 10, quận Thủ đức, Bình Thạnh | true   | 1000      |
  And I click the "Thêm" button
  Then I should see view "Thêm Sản Phẩm" again

Scenario: Create a new door item record with price<0
  When I go to page add product
  And I enter the following information with price<0
	| Name                         | MetaTitle                    | SeoTitle                               | Code  | Description                                   | Image                   | Price    | PromotionPrice | CategoryID | ProductDetail                                 | Waranty | MetaKeywords                 | MetaDescriptions                                                          | Status | ViewCount |
	| Cửa đi KINGLONG 2 cánh trượt | Cửa đi KINGLONG 2 cánh trượt | Cửa đi KINGLONG 2 cánh trượt tại TPHCM | KL001 | Cửa đi KINGLONG 2 cánh trượt , chất lượng cao | /Assets/Images/logo.jpg | -1000000 | 1890000        | 1          | Cửa đi KINGLONG 2 cánh trượt , chất lượng cao | 12      | Cửa đi KINGLONG 2 cánh trượt | Cửa đi KINGLONG 2 cánh trượt tại TPHCM, quận 10, quận Thủ đức, Bình Thạnh | true   | 1000      |
  And I click the "Thêm" button
  Then I should see view "Thêm Sản Phẩm" again because error
Scenario: Create a new door item record with viewcount<0
  When I go to page add product
  And I enter the following information with viewcount<0
	| Name                         | MetaTitle                    | SeoTitle                               | Code  | Description                                   | Image                   | Price   | PromotionPrice | CategoryID | ProductDetail                                 | Waranty | MetaKeywords                 | MetaDescriptions                                                          | Status | ViewCount |
	| Cửa đi KINGLONG 2 cánh trượt | Cửa đi KINGLONG 2 cánh trượt | Cửa đi KINGLONG 2 cánh trượt tại TPHCM | KL001 | Cửa đi KINGLONG 2 cánh trượt , chất lượng cao | /Assets/Images/logo.jpg | 1000000 | 1890000        | 1          | Cửa đi KINGLONG 2 cánh trượt , chất lượng cao | 12      | Cửa đi KINGLONG 2 cánh trượt | Cửa đi KINGLONG 2 cánh trượt tại TPHCM, quận 10, quận Thủ đức, Bình Thạnh | true   | -1000     |
  And I click the "Thêm" button
  Then I should see view "Thêm Sản Phẩm" again because error

Scenario: Create a new door item record with empty image field
  When I go to page add product
  And I enter the following information with empty image field
	| Name                         | MetaTitle                    | SeoTitle                               | Code  | Description                                   | Price   | PromotionPrice | CategoryID | ProductDetail                                 | Waranty | MetaKeywords                 | MetaDescriptions                                                          | Status | ViewCount |
	| Cửa đi KINGLONG 2 cánh trượt | Cửa đi KINGLONG 2 cánh trượt | Cửa đi KINGLONG 2 cánh trượt tại TPHCM | KL001 | Cửa đi KINGLONG 2 cánh trượt , chất lượng cao | 1000000 | 1890000        | 1          | Cửa đi KINGLONG 2 cánh trượt , chất lượng cao | 12      | Cửa đi KINGLONG 2 cánh trượt | Cửa đi KINGLONG 2 cánh trượt tại TPHCM, quận 10, quận Thủ đức, Bình Thạnh | true   | -1000     |
  And I click the "Thêm" button
  Then I should see view "Thêm Sản Phẩm" again because error