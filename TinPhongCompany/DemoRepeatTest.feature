Feature: Create a new door item with loop data
  In order to add new door to db
  As a site administrator
  I want to be able to create, view and manage door item records

Background: 
	 Given I am logged into the site as an administrators


Scenario Outline: Create a new door item with data below
  When I go to  add product page
  And I enter the following information <Name> <MetaTitle> <SeoTitle> <Code> <Description> <Image> <Price> <PromotionPrice> <CategoryID> <ProductDetail> <Waranty>  <MetaKeywords> <MetaDescriptions> <Status> <ViewCount>	
  And I will click the "Thêm" button
  Then I should see view <Result>

	
	Examples:
        | Name                         | MetaTitle                    | SeoTitle                               | Code  | Description                                   | Image                   | Price    | PromotionPrice | CategoryID | ProductDetail                                 | Waranty | MetaKeywords                 | MetaDescriptions                                                          | Status | ViewCount | Result             |
        | Cửa đi KINGLONG 2 cánh trượt | Cửa đi KINGLONG 2 cánh trượt | Cửa đi KINGLONG 2 cánh trượt tại TPHCM | KL001 | Cửa đi KINGLONG 2 cánh trượt , chất lượng cao | /Assets/Images/logo.jpg | 1900000  | 1890000        | 1          | Cửa đi KINGLONG 2 cánh trượt , chất lượng cao | 12      | Cửa đi KINGLONG 2 cánh trượt | Cửa đi KINGLONG 2 cánh trượt tại TPHCM, quận 10, quận Thủ đức, Bình Thạnh | true   | 1000      | Danh Sách Sản Phẩm |
        |                              | Cửa đi KINGLONG 2 cánh trượt | Cửa đi KINGLONG 2 cánh trượt tại TPHCM | KL001 | Cửa đi KINGLONG 2 cánh trượt , chất lượng cao | /Assets/Images/logo.jpg | -1900000 | 1890000        | 1          | Cửa đi KINGLONG 2 cánh trượt , chất lượng cao | 12      | Cửa đi KINGLONG 2 cánh trượt | Cửa đi KINGLONG 2 cánh trượt tại TPHCM, quận 10, quận Thủ đức, Bình Thạnh | true   | 1000      | Thêm Sản Phẩm      |
        | Cửa đi KINGLONG 2 cánh trượt | Cửa đi KINGLONG 2 cánh trượt | Cửa đi KINGLONG 2 cánh trượt tại TPHCM | KL001 | Cửa đi KINGLONG 2 cánh trượt , chất lượng cao | /Assets/Images/logo.jpg | 1900000  | 1890000        | 1          | Cửa đi KINGLONG 2 cánh trượt , chất lượng cao | 12      | Cửa đi KINGLONG 2 cánh trượt | Cửa đi KINGLONG 2 cánh trượt tại TPHCM, quận 10, quận Thủ đức, Bình Thạnh | true   | 1000      | Thêm Sản Phẩm      |
        | Cửa đi KINGLONG 2 cánh trượt | Cửa đi KINGLONG 2 cánh trượt | Cửa đi KINGLONG 2 cánh trượt tại TPHCM | KL001 | Cửa đi KINGLONG 2 cánh trượt , chất lượng cao | /Assets/Images/logo.jpg | 1900000  | 1890000        | 1          | Cửa đi KINGLONG 2 cánh trượt , chất lượng cao | 12      | Cửa đi KINGLONG 2 cánh trượt | Cửa đi KINGLONG 2 cánh trượt tại TPHCM, quận 10, quận Thủ đức, Bình Thạnh | true   | -1000     | Thêm Sản Phẩm      |
        | Cửa đi KINGLONG 2 cánh trượt | Cửa đi KINGLONG 2 cánh trượt | Cửa đi KINGLONG 2 cánh trượt tại TPHCM | KL001 | Cửa đi KINGLONG 2 cánh trượt , chất lượng cao |                         | 1900000  | 1890000        | 1          | Cửa đi KINGLONG 2 cánh trượt , chất lượng cao | 12      | Cửa đi KINGLONG 2 cánh trượt | Cửa đi KINGLONG 2 cánh trượt tại TPHCM, quận 10, quận Thủ đức, Bình Thạnh | true   | 1000      | Thêm Sản Phẩm      |
