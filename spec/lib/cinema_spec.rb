#encoding: utf-8
require 'rspec'
require_relative 'cinema'

describe Cinema do
    die_hard = Movie.new('Die Hard', 'Action', Date.new(2014, 2, 24))
    aladin = Movie.new('Aladdin', 'Kids', Date.new(2014, 2, 14))
    viernes13 = Movie.new('Viernes 13', 'Terror', Date.new(2014, 2, 3))
    lion_king = Movie.new("Lion King", 'Kids', Date.new(2014, 2, 19))

    let(:cinema) do
        cinema = Cinema.new([die_hard, aladin, viernes13, lion_king])
    end

    it 'returns an array of our movies ordered by title' do
        expect(cinema.order_by_title).to eq([aladin.title, die_hard.title, lion_king.title, viernes13.title])
    end

    it 'returns an array of our movies ordered by genre' do
        expect(cinema.order_by_genero).to eq([die_hard.genero, aladin.genero, lion_king.genero, viernes13.genero])
    end

    it 'returns an array of our movies sorted by date' do
        expect(cinema.sort_by_date).to eq([viernes13.by_date, aladin.by_date, lion_king.by_date, die_hard.by_date])
    end

    it 'returns a range of movies between dates' do
        expect(cinema.between_date(Date.new(2014, 2, 1), Date.new(2014, 2, 27))).to eq([die_hard.by_date, aladin.by_date, viernes13.by_date, lion_king.by_date])
    end

    describe 'movies_per_genre' do
            die_hard = Movie.new('Die Hard', 'Action', Date.new(2014, 2, 24))
            aladin = Movie.new('Aladdin', 'Kids', Date.new(2014, 2, 14))
            viernes13 = Movie.new('Viernes 13', 'Terror', Date.new(2014, 2, 3))
            lion_king = Movie.new("Lion King", 'Kids', Date.new(2014, 2, 19))

            histogram = cinema.movies_per_genre

            titles = cinema.movies_per_genre
            expect(titles['Action']).to eq(1)
            expect(titles['Kids']).to eq(2)
            expect(titles['Terror']).to eq(1)       
    end  