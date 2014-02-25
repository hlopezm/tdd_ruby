#encoding: utf-8
require	'rspec'
require_relative 'cinema'

describe Movie do 
    describe "attributes" do
        let(:movie) do
            Movie.new('Die Hard', 'Action', Date.new(1985,1,24))
        end

        it "it has a title" do
            expect(movie.title).to eq("Die Hard")
        end

        it "it has a genre" do
            expect(movie.genero).to eq("Action")
        end

        it "it has a date" do
            expect(movie.by_date).to eq(Date.new(1985,1,24))
        end
    end
end