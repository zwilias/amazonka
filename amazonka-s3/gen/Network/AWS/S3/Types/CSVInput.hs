{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.S3.Types.CSVInput
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.S3.Types.CSVInput where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.S3.Internal
import Network.AWS.S3.Types.FileHeaderInfo

-- | Describes how a CSV-formatted input object is formatted.
--
-- /See:/ 'csvInput' smart constructor.
data CSVInput = CSVInput'{_ciQuoteCharacter ::
                          !(Maybe Text),
                          _ciRecordDelimiter :: !(Maybe Text),
                          _ciFileHeaderInfo :: !(Maybe FileHeaderInfo),
                          _ciQuoteEscapeCharacter :: !(Maybe Text),
                          _ciComments :: !(Maybe Text),
                          _ciFieldDelimiter :: !(Maybe Text)}
                  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CSVInput' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ciQuoteCharacter' - Value used for escaping where the field delimiter is part of the value.
--
-- * 'ciRecordDelimiter' - Value used to separate individual records.
--
-- * 'ciFileHeaderInfo' - Describes the first line of input. Valid values: None, Ignore, Use.
--
-- * 'ciQuoteEscapeCharacter' - Single character used for escaping the quote character inside an already escaped value.
--
-- * 'ciComments' - Single character used to indicate a row should be ignored when present at the start of a row.
--
-- * 'ciFieldDelimiter' - Value used to separate individual fields in a record.
csvInput
    :: CSVInput
csvInput
  = CSVInput'{_ciQuoteCharacter = Nothing,
              _ciRecordDelimiter = Nothing,
              _ciFileHeaderInfo = Nothing,
              _ciQuoteEscapeCharacter = Nothing,
              _ciComments = Nothing, _ciFieldDelimiter = Nothing}

-- | Value used for escaping where the field delimiter is part of the value.
ciQuoteCharacter :: Lens' CSVInput (Maybe Text)
ciQuoteCharacter = lens _ciQuoteCharacter (\ s a -> s{_ciQuoteCharacter = a})

-- | Value used to separate individual records.
ciRecordDelimiter :: Lens' CSVInput (Maybe Text)
ciRecordDelimiter = lens _ciRecordDelimiter (\ s a -> s{_ciRecordDelimiter = a})

-- | Describes the first line of input. Valid values: None, Ignore, Use.
ciFileHeaderInfo :: Lens' CSVInput (Maybe FileHeaderInfo)
ciFileHeaderInfo = lens _ciFileHeaderInfo (\ s a -> s{_ciFileHeaderInfo = a})

-- | Single character used for escaping the quote character inside an already escaped value.
ciQuoteEscapeCharacter :: Lens' CSVInput (Maybe Text)
ciQuoteEscapeCharacter = lens _ciQuoteEscapeCharacter (\ s a -> s{_ciQuoteEscapeCharacter = a})

-- | Single character used to indicate a row should be ignored when present at the start of a row.
ciComments :: Lens' CSVInput (Maybe Text)
ciComments = lens _ciComments (\ s a -> s{_ciComments = a})

-- | Value used to separate individual fields in a record.
ciFieldDelimiter :: Lens' CSVInput (Maybe Text)
ciFieldDelimiter = lens _ciFieldDelimiter (\ s a -> s{_ciFieldDelimiter = a})

instance Hashable CSVInput where

instance NFData CSVInput where

instance ToXML CSVInput where
        toXML CSVInput'{..}
          = mconcat
              ["QuoteCharacter" @= _ciQuoteCharacter,
               "RecordDelimiter" @= _ciRecordDelimiter,
               "FileHeaderInfo" @= _ciFileHeaderInfo,
               "QuoteEscapeCharacter" @= _ciQuoteEscapeCharacter,
               "Comments" @= _ciComments,
               "FieldDelimiter" @= _ciFieldDelimiter]
