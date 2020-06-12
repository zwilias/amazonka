{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AlexaBusiness.Types.ContactData
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.AlexaBusiness.Types.ContactData where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Information related to a contact.
--
--
--
-- /See:/ 'contactData' smart constructor.
data ContactData = ContactData'{_cdLastName ::
                                !(Maybe Text),
                                _cdContactARN :: !(Maybe Text),
                                _cdPhoneNumber :: !(Maybe Text),
                                _cdFirstName :: !(Maybe Text),
                                _cdDisplayName :: !(Maybe Text)}
                     deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ContactData' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdLastName' - The last name of the contact, used to call the contact on the device.
--
-- * 'cdContactARN' - The ARN of the contact.
--
-- * 'cdPhoneNumber' - The phone number of the contact.
--
-- * 'cdFirstName' - The first name of the contact, used to call the contact on the device.
--
-- * 'cdDisplayName' - The name of the contact to display on the console.
contactData
    :: ContactData
contactData
  = ContactData'{_cdLastName = Nothing,
                 _cdContactARN = Nothing, _cdPhoneNumber = Nothing,
                 _cdFirstName = Nothing, _cdDisplayName = Nothing}

-- | The last name of the contact, used to call the contact on the device.
cdLastName :: Lens' ContactData (Maybe Text)
cdLastName = lens _cdLastName (\ s a -> s{_cdLastName = a})

-- | The ARN of the contact.
cdContactARN :: Lens' ContactData (Maybe Text)
cdContactARN = lens _cdContactARN (\ s a -> s{_cdContactARN = a})

-- | The phone number of the contact.
cdPhoneNumber :: Lens' ContactData (Maybe Text)
cdPhoneNumber = lens _cdPhoneNumber (\ s a -> s{_cdPhoneNumber = a})

-- | The first name of the contact, used to call the contact on the device.
cdFirstName :: Lens' ContactData (Maybe Text)
cdFirstName = lens _cdFirstName (\ s a -> s{_cdFirstName = a})

-- | The name of the contact to display on the console.
cdDisplayName :: Lens' ContactData (Maybe Text)
cdDisplayName = lens _cdDisplayName (\ s a -> s{_cdDisplayName = a})

instance FromJSON ContactData where
        parseJSON
          = withObject "ContactData"
              (\ x ->
                 ContactData' <$>
                   (x .:? "LastName") <*> (x .:? "ContactArn") <*>
                     (x .:? "PhoneNumber")
                     <*> (x .:? "FirstName")
                     <*> (x .:? "DisplayName"))

instance Hashable ContactData where

instance NFData ContactData where
