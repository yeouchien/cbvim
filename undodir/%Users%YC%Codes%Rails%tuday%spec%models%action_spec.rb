Vim�UnDo� �����>Gk�i������������*��u                                     Q���    _�                             ����                                                                                                                                                                                                                                                                                                                                                             Q��Q     �               �               5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             Q��S     �                  5�_�                       	    ����                                                                                                                                                                                                                                                                                                                                                             Q��U     �         
      describe Log do5�_�                       "    ����                                                                                                                                                                                                                                                                                                                                                             Q��^     �         
      '  let(:log) { FactoryGirl.create :log }5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             Q��g     �         
      *  let(:log) { FactoryGirl.create :action }5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             Q��l    �      	   
          log.should be_valid5�_�                    	       ����                                                                                                                                                                                                                                                                                                                                                             Q��     �         
        end5�_�      	                     ����                                                                                                                                                                                                                                                                                                                                                             Q���     �   
              it 'should have many logs'5�_�      
           	           ����                                                                                                                                                                                                                                                                                                                                                             Q���     �               end5�_�   	              
           ����                                                                                                                                                                                                                                                                                                                                                             Q���     �                5�_�   
                        ����                                                                                                                                                                                                                                                                                                                                                             Q���     �               !    action.should have_many(:log)5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             Q���     �             �             5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             Q���     �               -  let(:action) { FactoryGirl.create :action }5�_�                       "    ����                                                                                                                                                                                                                                                                                                                                                             Q���    �               *  let(:log) { FactoryGirl.create :action }5�_�                            ����                                                                                                                                                                                                                                                                                                                                                V       Q���     �                  it 'should have many logs' do        action.should have_many(log)     end5�_�                             ����                                                                                                                                                                                                                                                                                                                                                V       Q���    �   
              5��