require 'swagger_helper'

RSpec.describe 'api/v1/cars', type: :request do

 path '/api/v1/cars/' do
    get 'List all Cars' do
      tags 'List All Cars'
      produces 'application/json'
      
      response '200', 'List of cars found' do
        before do
          @cars = Car.create([
            {
              name: 'Alfa Romeo',
              image: 'https://www.alfaromeousa.com/content/dam/alfaromeousa/brand/2021/2021-alfa-romeo-stelvio-1920x1080.jpg',
              model: '2021',
              daily_price: 1000,
              description: 'The Alfa Romeo Stelvio is a compact luxury crossover SUV manufactured by Italian automaker Alfa Romeo. The Stelvio is Alfa Romeo\'s first SUV and is based on the Giorgio platform, which underpins the Alfa Romeo Giulia.'
            },
            {
              name: 'McLaren',
              image: 'https://www.mclaren.com/content/dam/mclaren/brand/2021/2021-mclaren-720s-1920x1080.jpg',
              model: '2021',
              daily_price: 1000,
              description: 'The McLaren 720S is a British sports car produced by McLaren Automotive. The 720S is the second model in the Super Series, sitting below the McLaren P1 and above the McLaren 570S.'
            },
            {
              name: 'Mercedes-Benz',
              image: 'https://www.mbusa.com/content/dam/mbusa/brand/2021/2021-mercedes-benz-gls-1920x1080.jpg',
              model: '2021',
              daily_price: 1000,
              description: 'The Mercedes-Benz GLS-Class is a full-size luxury SUV produced by the German automaker Mercedes-Benz since 2006. The first generation (X164) was launched in 2006 as the successor to the Mercedes-Benz GL-Class (X164).'
            }
          ])
        end

        schema type: :array,
          items: {
          type: :object,
            properties: {
              id: { type: :integer },
              name: { type: :string },
              image: { type: :string },
              model: { type: :string },
              daily_price: { type: :decimal },
              description: { type: :text },
            },
          required: ['id', 'name', 'image', 'model', 'daily_price', 'description']
        }
        run_test!
      end
    end
  end

  path '/api/v1/cars/{id}' do
    get 'List all Cars' do
      tags 'List All Cars'
      produces 'application/json'
      parameter name: :id, in: :path, type: :integer, description: 'Car ID' 
     
      response '200', 'Single Car was found' do
        before do
          @cars = Car.create([
            {
              name: 'Alfa Romeo',
              image: 'https://www.alfaromeousa.com/content/dam/alfaromeousa/brand/2021/2021-alfa-romeo-stelvio-1920x1080.jpg',
              model: '2021',
              daily_price: 1000,
              description: 'The Alfa Romeo Stelvio is a compact luxury crossover SUV manufactured by Italian automaker Alfa Romeo. The Stelvio is Alfa Romeo\'s first SUV and is based on the Giorgio platform, which underpins the Alfa Romeo Giulia.'
            },
            {
              name: 'McLaren',
              image: 'https://www.mclaren.com/content/dam/mclaren/brand/2021/2021-mclaren-720s-1920x1080.jpg',
              model: '2021',
              daily_price: 1000,
              description: 'The McLaren 720S is a British sports car produced by McLaren Automotive. The 720S is the second model in the Super Series, sitting below the McLaren P1 and above the McLaren 570S.'
            },
            {
              name: 'Mercedes-Benz',
              image: 'https://www.mbusa.com/content/dam/mbusa/brand/2021/2021-mercedes-benz-gls-1920x1080.jpg',
              model: '2021',
              daily_price: 1000,
              description: 'The Mercedes-Benz GLS-Class is a full-size luxury SUV produced by the German automaker Mercedes-Benz since 2006. The first generation (X164) was launched in 2006 as the successor to the Mercedes-Benz GL-Class (X164).'
            }
          ])
        end

        schema type: :object,
          properties: {
            id: { type: :integer },
            name: { type: :string },
            image: { type: :string },
            model: { type: :string },
            daily_price: { type: :decimal },
            description: { type: :text },
          },
        required: ['id', 'name', 'image', 'model', 'daily_price', 'description']
        let(:id) { @cars.first.id }
        run_test!
      end
      
      response '404', 'You need to Sign in before continuing' do
        let(:id) { 'invalid' }
        run_test!
      end
    end
  end
end