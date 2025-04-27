-- users 테이블: 모든 사용자에게 모든 권한 허용
CREATE POLICY "Allow all actions for all users"
  ON users
  FOR ALL
  TO public
  USING (true)
  WITH CHECK (true);

-- relationships 테이블: 모든 사용자에게 모든 권한 허용
CREATE POLICY "Allow all actions for all users"
  ON relationships
  FOR ALL
  TO public
  USING (true)
  WITH CHECK (true);

-- questions 테이블: 모든 사용자에게 모든 권한 허용
CREATE POLICY "Allow all actions for all users"
  ON questions
  FOR ALL
  TO public
  USING (true)
  WITH CHECK (true);

-- answers 테이블: 모든 사용자에게 모든 권한 허용
CREATE POLICY "Allow all actions for all users"
  ON answers
  FOR ALL
  TO public
  USING (true)
  WITH CHECK (true);

-- share_links 테이블: 모든 사용자에게 모든 권한 허용
CREATE POLICY "Allow all actions for all users"
  ON share_links
  FOR ALL
  TO public
  USING (true)
  WITH CHECK (true); 