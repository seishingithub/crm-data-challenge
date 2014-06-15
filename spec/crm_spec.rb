require 'rspec'
require 'spec_helper'
require_relative '../lib/challenge'

describe Challenge do
  it 'returns array of companies and people' do
    pending
    data =
      {
        :people => [
          {
            :id => 20,
            :first_name => "Savannah",
            :last_name => "Clementina",
            :employments => [
              {
                :company_id => 0,
                :title => "Chief Communications Consultant"
              },
              {
                :company_id => 55,
                :title => "Horse"
              }
            ]
          },
          {
            :id => 46,
            :first_name => "Elyse",
            :last_name => "Jensen",
            :employments =>
              [
                {
                  :company_id => 0,
                  :title => "Human Directives Engineer"
                }
              ]
          },
          {
            :id => 28,
            :first_name => "Harold",
            :last_name => "Parker",
            :employments =>
              [
              ]
          },
          {
            :id => 43,
            :first_name => "Peter",
            :last_name => "Smith",
            :employments =>
              [
              ]
          }
        ],
        :companies => [
          {
            :id => 0,
            :name => "Nicolas and Sons"
          },
          {
            :id => 1,
            :name => "Mueller LLC"
          },
          {
            :id => 2,
            :name => "Mohr, King and Gleason"
          }
        ]
      }


    actual = Challenge.new(data).parse_data(0)
    expected = [
      {
        name: "Nicolas and Sons",
        employees: [
          {
            :id => 20,
            :first_name => "Savannah",
            :last_name => "Clementina",
            :title => "Chief Communications Consultant"
          },
          {
            :id => 46,
            :first_name => "Elyse",
            :last_name => "Jensen",
            :title => "Human Directives Engineer"
          },
        ]
      }
    ]

    expect(actual).to eq expected
  end

  it 'should return unemployed people' do
    data =
      {
        :people => [
          {
            :id => 20,
            :first_name => "Savannah",
            :last_name => "Clementina",
            :employments => [
              {
                :company_id => 0,
                :title => "Chief Communications Consultant"
              },
              {
                :company_id => 55,
                :title => "Horse"
              }
            ]
          },
          {
            :id => 46,
            :first_name => "Elyse",
            :last_name => "Jensen",
            :employments =>
              [
                {
                  :company_id => 0,
                  :title => "Human Directives Engineer"
                }
              ]
          },
          {
            :id => 28,
            :first_name => "Harold",
            :last_name => "Parker",
            :employments =>
              [
              ]
          },
          {
            :id => 43,
            :first_name => "Peter",
            :last_name => "Smith",
            :employments =>
              [
              ]
          }
        ],
        :companies => [
          {
            :id => 0,
            :name => "Nicolas and Sons"
          },
          {
            :id => 1,
            :name => "Mueller LLC"
          },
          {
            :id => 2,
            :name => "Mohr, King and Gleason"
          }
        ]
      }
    actual = Challenge.new(data).unemployed
    expected = [
      {
        :id => 28,
        :first_name => "Harold",
        :last_name => "Parker"
      },
      {
        :id => 43,
        :first_name => "Peter",
        :last_name => "Smith",
      }
    ]
    expect(actual).to eq expected
  end
end







