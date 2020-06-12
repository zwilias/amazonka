{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.DataSource
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.SageMaker.Types.DataSource where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SageMaker.Types.S3DataSource

-- | Describes the location of the channel data.
--
--
--
-- /See:/ 'dataSource' smart constructor.
newtype DataSource = DataSource'{_dsS3DataSource ::
                                 S3DataSource}
                       deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DataSource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsS3DataSource' - The S3 location of the data source that is associated with a channel.
dataSource
    :: S3DataSource -- ^ 'dsS3DataSource'
    -> DataSource
dataSource pS3DataSource_
  = DataSource'{_dsS3DataSource = pS3DataSource_}

-- | The S3 location of the data source that is associated with a channel.
dsS3DataSource :: Lens' DataSource S3DataSource
dsS3DataSource = lens _dsS3DataSource (\ s a -> s{_dsS3DataSource = a})

instance FromJSON DataSource where
        parseJSON
          = withObject "DataSource"
              (\ x -> DataSource' <$> (x .: "S3DataSource"))

instance Hashable DataSource where

instance NFData DataSource where

instance ToJSON DataSource where
        toJSON DataSource'{..}
          = object
              (catMaybes
                 [Just ("S3DataSource" .= _dsS3DataSource)])
