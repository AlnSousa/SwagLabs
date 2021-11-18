class ProductsPage
    include Capybara::DSL

    def products_title
        find('.title').text
    end
end