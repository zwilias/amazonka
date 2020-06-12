{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glue.Types.DevEndpointCustomLibraries
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Glue.Types.DevEndpointCustomLibraries where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Custom libraries to be loaded into a DevEndpoint.
--
--
--
-- /See:/ 'devEndpointCustomLibraries' smart constructor.
data DevEndpointCustomLibraries = DevEndpointCustomLibraries'{_declExtraPythonLibsS3Path
                                                              :: !(Maybe Text),
                                                              _declExtraJARsS3Path
                                                              :: !(Maybe Text)}
                                    deriving (Eq, Read, Show, Data, Typeable,
                                              Generic)

-- | Creates a value of 'DevEndpointCustomLibraries' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'declExtraPythonLibsS3Path' - Path(s) to one or more Python libraries in an S3 bucket that should be loaded in your DevEndpoint. Multiple values must be complete paths separated by a comma. Please note that only pure Python libraries can currently be used on a DevEndpoint. Libraries that rely on C extensions, such as the <http://pandas.pydata.org/ pandas> Python data analysis library, are not yet supported.
--
-- * 'declExtraJARsS3Path' - Path to one or more Java Jars in an S3 bucket that should be loaded in your DevEndpoint. Please note that only pure Java/Scala libraries can currently be used on a DevEndpoint.
devEndpointCustomLibraries
    :: DevEndpointCustomLibraries
devEndpointCustomLibraries
  = DevEndpointCustomLibraries'{_declExtraPythonLibsS3Path
                                  = Nothing,
                                _declExtraJARsS3Path = Nothing}

-- | Path(s) to one or more Python libraries in an S3 bucket that should be loaded in your DevEndpoint. Multiple values must be complete paths separated by a comma. Please note that only pure Python libraries can currently be used on a DevEndpoint. Libraries that rely on C extensions, such as the <http://pandas.pydata.org/ pandas> Python data analysis library, are not yet supported.
declExtraPythonLibsS3Path :: Lens' DevEndpointCustomLibraries (Maybe Text)
declExtraPythonLibsS3Path = lens _declExtraPythonLibsS3Path (\ s a -> s{_declExtraPythonLibsS3Path = a})

-- | Path to one or more Java Jars in an S3 bucket that should be loaded in your DevEndpoint. Please note that only pure Java/Scala libraries can currently be used on a DevEndpoint.
declExtraJARsS3Path :: Lens' DevEndpointCustomLibraries (Maybe Text)
declExtraJARsS3Path = lens _declExtraJARsS3Path (\ s a -> s{_declExtraJARsS3Path = a})

instance Hashable DevEndpointCustomLibraries where

instance NFData DevEndpointCustomLibraries where

instance ToJSON DevEndpointCustomLibraries where
        toJSON DevEndpointCustomLibraries'{..}
          = object
              (catMaybes
                 [("ExtraPythonLibsS3Path" .=) <$>
                    _declExtraPythonLibsS3Path,
                  ("ExtraJarsS3Path" .=) <$> _declExtraJARsS3Path])
