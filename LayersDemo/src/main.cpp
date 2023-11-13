/*
 * Copyright (C) 2023 The Layers Project
 *
 * This file is part of the Layers Demo application.
 *
 * Layers Demo is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * Layers Demo is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with Layers Demo. If not, see <https://www.gnu.org/licenses/>.
 */

#include "LayersDemoWindow.h"

#include <QUuid>

#include <QLayers/qlapplication.h>
#include <QLayers/qlgithubrepo.h>
#include <QLayers/qlupdatedialog.h>

using namespace QLayers;

int main(int argc, char *argv[])
{
	QLApplication app(argc, argv,
		"Layers Demo",
		QUuid("f97aae7f-2076-4918-93ce-19321584f675"));
	app.set_github_repo("TheLayersProject/LayersDemo");
	app.set_publisher("The Layers Project");
	app.set_version("0.17.0");
	app.init();

	//if (app.update_available())
	//{
	//	QLUpdateDialog update_dialog =
	//		QLUpdateDialog(app.version(), app.latest_version());

	//	update_dialog.apply_theme_item(
	//		activeTheme()->find_item(update_dialog.path()));

	//	if (update_dialog.exec())
	//	{
	//		app.download_and_install_update();
	//		return 0;
	//	}
	//}

	LayersDemoWindow window;
	window.apply_theme_item(activeTheme()->find_item(window.path()));
	window.show();

	return app.exec();
}
