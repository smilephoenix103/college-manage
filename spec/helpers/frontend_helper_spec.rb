RSpec.describe FrontendHelper, type: :helper do
  describe '#scholarship_style_change(scholarship)' do
    let!(:scholarship_group) { FactoryGirl.create :admin_scholarship_group }
    let(:scholarship_50) { FactoryGirl.create :admin_scholarship, name: '50% off', discount: 50, condition: 'GPA 5', details: 'only GPA 5', group: scholarship_group  }
    let!(:scholarship_25) { FactoryGirl.create :admin_scholarship, name: '25% off', discount: 25, condition: 'GPA 4.25', details: 'only GPA 4.25', group: scholarship_group }
    let!(:scholarship_20) { FactoryGirl.create :admin_scholarship, name: '20% off', discount: 20, condition: 'GPA 4', details: 'only GPA 4', group: scholarship_group  }
    let(:first_array) { ['OliveDrab', 'box box-border'] }
    let(:second_array) { ['FireBush', 'box box-theme'] }
    let(:third_array) { ['Mojo', 'box box-dark'] }

    context 'checks above 50% scholarship' do
      it 'returns first array' do
        expect(scholarship_style_change(scholarship_50)).to eq(first_array)
      end
      it 'does not return second array' do
        expect(scholarship_style_change(scholarship_50)).not_to eq(second_array)
      end
      it 'does not return third array' do
        expect(scholarship_style_change(scholarship_50)).not_to eq(third_array)
      end
    end

    context 'checks above 25% scholarship with even id' do
      it 'does not return first array' do
        expect(scholarship_style_change(scholarship_25)).not_to eq(first_array)
      end
      it 'does not return second array' do
        expect(scholarship_style_change(scholarship_25)).not_to eq(second_array)
      end
      it 'returns third array' do
        expect(scholarship_style_change(scholarship_25)).to eq(third_array)
      end
    end

    context 'checks above 20% scholarship with odd id' do
      it 'does not return first array' do
        expect(scholarship_style_change(scholarship_20)).not_to eq(first_array)
      end
      it 'does not return second array' do
        expect(scholarship_style_change(scholarship_20)).to eq(second_array)
      end
      it 'does_not return third array' do
        expect(scholarship_style_change(scholarship_20)).not_to eq(third_array)
      end
    end
  end
end