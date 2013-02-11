// This file is part of QtUbuntu, a set of Qt components for Ubuntu.
// Copyright © 2013 Canonical Ltd.
//
// This program is free software; you can redistribute it and/or modify
// it under the terms of the GNU Lesser General Public License as published by
// the Free Software Foundation; version 3.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Lesser General Public License for more details.
//
// You should have received a copy of the GNU Lesser General Public License
// along with this program.  If not, see <http://www.gnu.org/licenses/>.

#ifndef QUBUNTUINTEGRATION_H
#define QUBUNTUINTEGRATION_H

#include "base/integration.h"
#include "screen.h"

class QUbuntuInput;

class QUbuntuIntegration : public QUbuntuBaseIntegration {
 public:
  QUbuntuIntegration();
  ~QUbuntuIntegration();

  // QPlatformIntegration methods.
  QPlatformWindow* createPlatformWindow(QWindow* window) const;
  QPlatformWindow* createPlatformWindow(QWindow* window);
  QPlatformInputContext* inputContext() const { return inputContext_; }
  QPlatformClipboard* clipboard() const { return clipboard_; }

 private:
  int argc_;
  char** argv_;
  QPlatformScreen* screen_;
  QUbuntuInput* input_;
  QPlatformInputContext* inputContext_;
  QPlatformClipboard* clipboard_;
};

#endif  // QUBUNTUINTEGRATION_H