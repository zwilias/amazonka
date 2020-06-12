{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.GuardDuty.Types.DomainDetails
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.GuardDuty.Types.DomainDetails where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Domain information for the AWS API call.
--
-- /See:/ 'domainDetails' smart constructor.
data DomainDetails = DomainDetails'
                       deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DomainDetails' with the minimum fields required to make a request.
--
domainDetails
    :: DomainDetails
domainDetails = DomainDetails'

instance FromJSON DomainDetails where
        parseJSON
          = withObject "DomainDetails"
              (\ x -> pure DomainDetails')

instance Hashable DomainDetails where

instance NFData DomainDetails where
