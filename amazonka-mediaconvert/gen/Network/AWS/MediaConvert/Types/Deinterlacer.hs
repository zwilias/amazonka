{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.Deinterlacer
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.Deinterlacer where

import Network.AWS.Lens
import Network.AWS.MediaConvert.Types.DeinterlaceAlgorithm
import Network.AWS.MediaConvert.Types.DeinterlacerControl
import Network.AWS.MediaConvert.Types.DeinterlacerMode
import Network.AWS.Prelude

-- | Settings for deinterlacer
--
-- /See:/ 'deinterlacer' smart constructor.
data Deinterlacer = Deinterlacer'{_dControl ::
                                  !(Maybe DeinterlacerControl),
                                  _dMode :: !(Maybe DeinterlacerMode),
                                  _dAlgorithm :: !(Maybe DeinterlaceAlgorithm)}
                      deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Deinterlacer' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dControl' - Undocumented member.
--
-- * 'dMode' - Undocumented member.
--
-- * 'dAlgorithm' - Undocumented member.
deinterlacer
    :: Deinterlacer
deinterlacer
  = Deinterlacer'{_dControl = Nothing,
                  _dMode = Nothing, _dAlgorithm = Nothing}

-- | Undocumented member.
dControl :: Lens' Deinterlacer (Maybe DeinterlacerControl)
dControl = lens _dControl (\ s a -> s{_dControl = a})

-- | Undocumented member.
dMode :: Lens' Deinterlacer (Maybe DeinterlacerMode)
dMode = lens _dMode (\ s a -> s{_dMode = a})

-- | Undocumented member.
dAlgorithm :: Lens' Deinterlacer (Maybe DeinterlaceAlgorithm)
dAlgorithm = lens _dAlgorithm (\ s a -> s{_dAlgorithm = a})

instance FromJSON Deinterlacer where
        parseJSON
          = withObject "Deinterlacer"
              (\ x ->
                 Deinterlacer' <$>
                   (x .:? "control") <*> (x .:? "mode") <*>
                     (x .:? "algorithm"))

instance Hashable Deinterlacer where

instance NFData Deinterlacer where

instance ToJSON Deinterlacer where
        toJSON Deinterlacer'{..}
          = object
              (catMaybes
                 [("control" .=) <$> _dControl,
                  ("mode" .=) <$> _dMode,
                  ("algorithm" .=) <$> _dAlgorithm])
