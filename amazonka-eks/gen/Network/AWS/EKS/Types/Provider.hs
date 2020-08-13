{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EKS.Types.Provider
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.EKS.Types.Provider where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Identifies the AWS Key Management Service (AWS KMS) customer master key (CMK) used to encrypt the secrets.
--
--
--
-- /See:/ 'provider' smart constructor.
newtype Provider = Provider'{_pKeyARN :: Maybe Text}
                     deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Provider' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pKeyARN' - Amazon Resource Name (ARN) or alias of the customer master key (CMK). The CMK must be symmetric, created in the same region as the cluster, and if the CMK was created in a different account, the user must have access to the CMK. For more information, see <https://docs.aws.amazon.com/kms/latest/developerguide/key-policy-modifying-external-accounts.html Allowing Users in Other Accounts to Use a CMK> in the /AWS Key Management Service Developer Guide/ .
provider
    :: Provider
provider = Provider'{_pKeyARN = Nothing}

-- | Amazon Resource Name (ARN) or alias of the customer master key (CMK). The CMK must be symmetric, created in the same region as the cluster, and if the CMK was created in a different account, the user must have access to the CMK. For more information, see <https://docs.aws.amazon.com/kms/latest/developerguide/key-policy-modifying-external-accounts.html Allowing Users in Other Accounts to Use a CMK> in the /AWS Key Management Service Developer Guide/ .
pKeyARN :: Lens' Provider (Maybe Text)
pKeyARN = lens _pKeyARN (\ s a -> s{_pKeyARN = a})

instance FromJSON Provider where
        parseJSON
          = withObject "Provider"
              (\ x -> Provider' <$> (x .:? "keyArn"))

instance Hashable Provider where

instance NFData Provider where

instance ToJSON Provider where
        toJSON Provider'{..}
          = object (catMaybes [("keyArn" .=) <$> _pKeyARN])
