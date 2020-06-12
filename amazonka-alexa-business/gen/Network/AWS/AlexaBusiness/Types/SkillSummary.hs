{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AlexaBusiness.Types.SkillSummary
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.AlexaBusiness.Types.SkillSummary where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | The summary of skills.
--
--
--
-- /See:/ 'skillSummary' smart constructor.
data SkillSummary = SkillSummary'{_ssSkillId ::
                                  !(Maybe Text),
                                  _ssSupportsLinking :: !(Maybe Bool),
                                  _ssSkillName :: !(Maybe Text)}
                      deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'SkillSummary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ssSkillId' - The ARN of the skill summary.
--
-- * 'ssSupportsLinking' - Linking support for a skill.
--
-- * 'ssSkillName' - The name of the skill.
skillSummary
    :: SkillSummary
skillSummary
  = SkillSummary'{_ssSkillId = Nothing,
                  _ssSupportsLinking = Nothing, _ssSkillName = Nothing}

-- | The ARN of the skill summary.
ssSkillId :: Lens' SkillSummary (Maybe Text)
ssSkillId = lens _ssSkillId (\ s a -> s{_ssSkillId = a})

-- | Linking support for a skill.
ssSupportsLinking :: Lens' SkillSummary (Maybe Bool)
ssSupportsLinking = lens _ssSupportsLinking (\ s a -> s{_ssSupportsLinking = a})

-- | The name of the skill.
ssSkillName :: Lens' SkillSummary (Maybe Text)
ssSkillName = lens _ssSkillName (\ s a -> s{_ssSkillName = a})

instance FromJSON SkillSummary where
        parseJSON
          = withObject "SkillSummary"
              (\ x ->
                 SkillSummary' <$>
                   (x .:? "SkillId") <*> (x .:? "SupportsLinking") <*>
                     (x .:? "SkillName"))

instance Hashable SkillSummary where

instance NFData SkillSummary where
