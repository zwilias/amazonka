{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glue.Types.Location
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Glue.Types.Location where

import Network.AWS.Glue.Types.CodeGenNodeArg
import Network.AWS.Lens
import Network.AWS.Prelude

-- | The location of resources.
--
--
--
-- /See:/ 'location' smart constructor.
data Location = Location'{_lJdbc ::
                          !(Maybe [CodeGenNodeArg]),
                          _lS3 :: !(Maybe [CodeGenNodeArg])}
                  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Location' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lJdbc' - A JDBC location.
--
-- * 'lS3' - An Amazon S3 location.
location
    :: Location
location
  = Location'{_lJdbc = Nothing, _lS3 = Nothing}

-- | A JDBC location.
lJdbc :: Lens' Location [CodeGenNodeArg]
lJdbc = lens _lJdbc (\ s a -> s{_lJdbc = a}) . _Default . _Coerce

-- | An Amazon S3 location.
lS3 :: Lens' Location [CodeGenNodeArg]
lS3 = lens _lS3 (\ s a -> s{_lS3 = a}) . _Default . _Coerce

instance Hashable Location where

instance NFData Location where

instance ToJSON Location where
        toJSON Location'{..}
          = object
              (catMaybes
                 [("Jdbc" .=) <$> _lJdbc, ("S3" .=) <$> _lS3])
