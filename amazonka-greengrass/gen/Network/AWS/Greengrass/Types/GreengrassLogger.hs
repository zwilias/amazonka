{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Greengrass.Types.GreengrassLogger
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Greengrass.Types.GreengrassLogger where

import Network.AWS.Greengrass.Types.LoggerComponent
import Network.AWS.Greengrass.Types.LoggerLevel
import Network.AWS.Greengrass.Types.LoggerType
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Information about a logger
--
-- /See:/ 'greengrassLogger' smart constructor.
data GreengrassLogger = GreengrassLogger'{_glSpace ::
                                          !(Maybe Int),
                                          _glComponent ::
                                          !(Maybe LoggerComponent),
                                          _glId :: !(Maybe Text),
                                          _glType :: !(Maybe LoggerType),
                                          _glLevel :: !(Maybe LoggerLevel)}
                          deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GreengrassLogger' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'glSpace' - The amount of file space, in KB, to use if the local file system is used for logging purposes.
--
-- * 'glComponent' - The component that will be subject to logging.
--
-- * 'glId' - The id of the logger.
--
-- * 'glType' - The type of log output which will be used.
--
-- * 'glLevel' - The level of the logs.
greengrassLogger
    :: GreengrassLogger
greengrassLogger
  = GreengrassLogger'{_glSpace = Nothing,
                      _glComponent = Nothing, _glId = Nothing,
                      _glType = Nothing, _glLevel = Nothing}

-- | The amount of file space, in KB, to use if the local file system is used for logging purposes.
glSpace :: Lens' GreengrassLogger (Maybe Int)
glSpace = lens _glSpace (\ s a -> s{_glSpace = a})

-- | The component that will be subject to logging.
glComponent :: Lens' GreengrassLogger (Maybe LoggerComponent)
glComponent = lens _glComponent (\ s a -> s{_glComponent = a})

-- | The id of the logger.
glId :: Lens' GreengrassLogger (Maybe Text)
glId = lens _glId (\ s a -> s{_glId = a})

-- | The type of log output which will be used.
glType :: Lens' GreengrassLogger (Maybe LoggerType)
glType = lens _glType (\ s a -> s{_glType = a})

-- | The level of the logs.
glLevel :: Lens' GreengrassLogger (Maybe LoggerLevel)
glLevel = lens _glLevel (\ s a -> s{_glLevel = a})

instance FromJSON GreengrassLogger where
        parseJSON
          = withObject "GreengrassLogger"
              (\ x ->
                 GreengrassLogger' <$>
                   (x .:? "Space") <*> (x .:? "Component") <*>
                     (x .:? "Id")
                     <*> (x .:? "Type")
                     <*> (x .:? "Level"))

instance Hashable GreengrassLogger where

instance NFData GreengrassLogger where

instance ToJSON GreengrassLogger where
        toJSON GreengrassLogger'{..}
          = object
              (catMaybes
                 [("Space" .=) <$> _glSpace,
                  ("Component" .=) <$> _glComponent,
                  ("Id" .=) <$> _glId, ("Type" .=) <$> _glType,
                  ("Level" .=) <$> _glLevel])
