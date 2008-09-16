/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * gtkD is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with gtkD; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * inFile  = GAppInfo.html
 * outPack = gio
 * outFile = AppInfoT
 * strct   = GAppInfo
 * realStrct=
 * ctorStrct=
 * clss    = AppInfoT
 * interf  = AppInfoIF
 * class Code: No
 * interface Code: No
 * template for:
 * 	- TStruct
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_app_info_
 * omit structs:
 * omit prefixes:
 * 	- g_app_launch_context_
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- glib.ErrorG
 * 	- glib.GException
 * 	- glib.ListG
 * 	- gio.AppInfoIF
 * 	- gio.AppLaunchContext
 * 	- gio.Icon
 * 	- gio.IconIF
 * structWrap:
 * 	- GAppInfo* -> AppInfoIF
 * 	- GAppLaunchContext* -> AppLaunchContext
 * 	- GIcon* -> IconIF
 * 	- GList* -> ListG
 * module aliases:
 * local aliases:
 * overrides:
 */

module gio.AppInfoT;

public  import gtkc.giotypes;

private import gtkc.gio;
private import glib.ConstructionException;


private import glib.Str;
private import glib.ErrorG;
private import glib.GException;
private import glib.ListG;
private import gio.AppInfoIF;
private import gio.AppLaunchContext;
private import gio.Icon;
private import gio.IconIF;




/**
 * Description
 * GAppInfo and GAppLaunchContext are used for describing and launching
 * applications installed on the system.
 */
public template AppInfoT(TStruct)
{
	
	/** the main Gtk struct */
	protected GAppInfo* gAppInfo;
	
	
	public GAppInfo* getAppInfoTStruct()
	{
		return cast(GAppInfo*)getStruct();
	}
	
	
	/**
	 */
	
	/**
	 * Creates a new GAppInfo from the given information.
	 * Params:
	 * commandline =  the commandline to use
	 * applicationName =  the application name, or NULL to use commandline
	 * flags =  flags that can specify details of the created GAppInfo
	 * Returns: new GAppInfo for given command.
	 * Throws: GException on failure.
	 */
	public static AppInfoIF createFromCommandline(string commandline, string applicationName, GAppInfoCreateFlags flags)
	{
		// GAppInfo* g_app_info_create_from_commandline (const char *commandline,  const char *application_name,  GAppInfoCreateFlags flags,  GError **error);
		GError* err = null;
		
		auto p = g_app_info_create_from_commandline(Str.toStringz(commandline), Str.toStringz(applicationName), flags, &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		if(p is null)
		{
			return null;
		}
		return new AppInfo(cast(GAppInfo*) p);
	}
	
	/**
	 * Creates a duplicate of a GAppInfo.
	 * Returns: a duplicate of appinfo.
	 */
	public AppInfoIF dup()
	{
		// GAppInfo* g_app_info_dup (GAppInfo *appinfo);
		auto p = g_app_info_dup(getAppInfoTStruct());
		if(p is null)
		{
			return null;
		}
		return new AppInfo(cast(GAppInfo*) p);
	}
	
	/**
	 * Checks if two GAppInfos are equal.
	 * Params:
	 * appinfo2 =  the second GAppInfo.
	 * Returns: TRUE if appinfo1 is equal to appinfo2. FALSE otherwise.
	 */
	public int equal(AppInfoIF appinfo2)
	{
		// gboolean g_app_info_equal (GAppInfo *appinfo1,  GAppInfo *appinfo2);
		return g_app_info_equal(getAppInfoTStruct(), (appinfo2 is null) ? null : appinfo2.getAppInfoTStruct());
	}
	
	/**
	 * Gets the ID of an application. An id is a string that
	 * identifies the application. The exact format of the id is
	 * platform dependent. For instance, on Unix this is the
	 * desktop file id from the xdg menu specification.
	 * Note that the returned ID may be NULL, depending on how
	 * the appinfo has been constructed.
	 * Returns: a string containing the application's ID.
	 */
	public string getId()
	{
		// const char* g_app_info_get_id (GAppInfo *appinfo);
		return Str.toString(g_app_info_get_id(getAppInfoTStruct()));
	}
	
	/**
	 * Gets the installed name of the application.
	 * Returns: the name of the application for appinfo.
	 */
	public string getName()
	{
		// const char* g_app_info_get_name (GAppInfo *appinfo);
		return Str.toString(g_app_info_get_name(getAppInfoTStruct()));
	}
	
	/**
	 * Gets a human-readable description of an installed application.
	 * Returns: a string containing a description of the application appinfo, or NULL if none.
	 */
	public string getDescription()
	{
		// const char* g_app_info_get_description (GAppInfo *appinfo);
		return Str.toString(g_app_info_get_description(getAppInfoTStruct()));
	}
	
	/**
	 * Gets the executable's name for the installed application.
	 * Returns: a string containing the appinfo's application binary's name.
	 */
	public string getExecutable()
	{
		// const char* g_app_info_get_executable (GAppInfo *appinfo);
		return Str.toString(g_app_info_get_executable(getAppInfoTStruct()));
	}
	
	/**
	 * Gets the icon for the application.
	 * Returns: the default GIcon for appinfo.
	 */
	public IconIF getIcon()
	{
		// GIcon* g_app_info_get_icon (GAppInfo *appinfo);
		auto p = g_app_info_get_icon(getAppInfoTStruct());
		if(p is null)
		{
			return null;
		}
		return new Icon(cast(GIcon*) p);
	}
	
	/**
	 * Launches the application. Passes files to the launched application
	 * as arguments, using the optional launch_context to get information
	 * about the details of the launcher (like what screen it is on).
	 * On error, error will be set accordingly.
	 * To lauch the application without arguments pass a NULL files list.
	 * Note that even if the launch is successful the application launched
	 * can fail to start if it runs into problems during startup. There is
	 * no way to detect this.
	 * Some URIs can be changed when passed through a GFile (for instance
	 * unsupported uris with strange formats like mailto:), so if you have
	 * a textual uri you want to pass in as argument, consider using
	 * g_app_info_launch_uris() instead.
	 * Params:
	 * files =  a GList of GFile objects
	 * launchContext =  a GAppLaunchContext or NULL
	 * Returns: TRUE on successful launch, FALSE otherwise.
	 * Throws: GException on failure.
	 */
	public int launch(ListG files, AppLaunchContext launchContext)
	{
		// gboolean g_app_info_launch (GAppInfo *appinfo,  GList *files,  GAppLaunchContext *launch_context,  GError **error);
		GError* err = null;
		
		auto p = g_app_info_launch(getAppInfoTStruct(), (files is null) ? null : files.getListGStruct(), (launchContext is null) ? null : launchContext.getAppLaunchContextStruct(), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Checks if the application accepts files as arguments.
	 * Returns: TRUE if the appinfo supports files.
	 */
	public int supportsFiles()
	{
		// gboolean g_app_info_supports_files (GAppInfo *appinfo);
		return g_app_info_supports_files(getAppInfoTStruct());
	}
	
	/**
	 * Checks if the application supports reading files and directories from URIs.
	 * Returns: TRUE if the appinfo supports URIs.
	 */
	public int supportsUris()
	{
		// gboolean g_app_info_supports_uris (GAppInfo *appinfo);
		return g_app_info_supports_uris(getAppInfoTStruct());
	}
	
	/**
	 * Launches the application. Passes uris to the launched application
	 * as arguments, using the optional launch_context to get information
	 * about the details of the launcher (like what screen it is on).
	 * On error, error will be set accordingly.
	 * To lauch the application without arguments pass a NULL uris list.
	 * Note that even if the launch is successful the application launched
	 * can fail to start if it runs into problems during startup. There is
	 * no way to detect this.
	 * Params:
	 * uris =  a GList containing URIs to launch.
	 * launchContext =  a GAppLaunchContext or NULL
	 * Returns: TRUE on successful launch, FALSE otherwise.
	 * Throws: GException on failure.
	 */
	public int launchUris(ListG uris, AppLaunchContext launchContext)
	{
		// gboolean g_app_info_launch_uris (GAppInfo *appinfo,  GList *uris,  GAppLaunchContext *launch_context,  GError **error);
		GError* err = null;
		
		auto p = g_app_info_launch_uris(getAppInfoTStruct(), (uris is null) ? null : uris.getListGStruct(), (launchContext is null) ? null : launchContext.getAppLaunchContextStruct(), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Checks if the application info should be shown in menus that
	 * list available applications.
	 * Returns: TRUE if the appinfo should be shown, FALSE otherwise.
	 */
	public int shouldShow()
	{
		// gboolean g_app_info_should_show (GAppInfo *appinfo);
		return g_app_info_should_show(getAppInfoTStruct());
	}
	
	/**
	 * Sets the application as the default handler for a given type.
	 * Params:
	 * contentType =  the content type.
	 * Returns: TRUE on success, FALSE on error.
	 * Throws: GException on failure.
	 */
	public int setAsDefaultForType(string contentType)
	{
		// gboolean g_app_info_set_as_default_for_type (GAppInfo *appinfo,  const char *content_type,  GError **error);
		GError* err = null;
		
		auto p = g_app_info_set_as_default_for_type(getAppInfoTStruct(), Str.toStringz(contentType), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Sets the application as the default handler for the given file extention.
	 * Params:
	 * extension =  a string containing the file extension (without the dot).
	 * Returns: TRUE on success, FALSE on error.
	 * Throws: GException on failure.
	 */
	public int setAsDefaultForExtension(string extension)
	{
		// gboolean g_app_info_set_as_default_for_extension  (GAppInfo *appinfo,  const char *extension,  GError **error);
		GError* err = null;
		
		auto p = g_app_info_set_as_default_for_extension(getAppInfoTStruct(), Str.toStringz(extension), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Adds a content type to the application information to indicate the
	 * application is capable of opening files with the given content type.
	 * Params:
	 * contentType =  a string.
	 * Returns: TRUE on success, FALSE on error.
	 * Throws: GException on failure.
	 */
	public int addSupportsType(string contentType)
	{
		// gboolean g_app_info_add_supports_type (GAppInfo *appinfo,  const char *content_type,  GError **error);
		GError* err = null;
		
		auto p = g_app_info_add_supports_type(getAppInfoTStruct(), Str.toStringz(contentType), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Checks if a supported content type can be removed from an application.
	 * Returns: TRUE if it is possible to remove supported  content types from a given appinfo, FALSE if not.
	 */
	public int canRemoveSupportsType()
	{
		// gboolean g_app_info_can_remove_supports_type (GAppInfo *appinfo);
		return g_app_info_can_remove_supports_type(getAppInfoTStruct());
	}
	
	/**
	 * Removes a supported type from an application, if possible.
	 * Params:
	 * contentType =  a string.
	 * Returns: TRUE on success, FALSE on error.
	 * Throws: GException on failure.
	 */
	public int removeSupportsType(string contentType)
	{
		// gboolean g_app_info_remove_supports_type (GAppInfo *appinfo,  const char *content_type,  GError **error);
		GError* err = null;
		
		auto p = g_app_info_remove_supports_type(getAppInfoTStruct(), Str.toStringz(contentType), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Gets a list of all of the applications currently registered
	 * on this system.
	 * For desktop files, this includes applications that have
	 * NoDisplay=true set or are excluded from
	 * display by means of OnlyShowIn or
	 * NotShowIn. See g_app_info_should_show().
	 * The returned list does not include applications which have
	 * the Hidden key set.
	 * Returns: a newly allocated GList of references to GAppInfos.
	 */
	public static ListG getAll()
	{
		// GList* g_app_info_get_all (void);
		auto p = g_app_info_get_all();
		if(p is null)
		{
			return null;
		}
		return new ListG(cast(GList*) p);
	}
	
	/**
	 * Gets a list of all GAppInfo s for a given content type.
	 * Params:
	 * contentType =  the content type to find a GAppInfo for
	 * Returns: GList of GAppInfo s for given content_type or NULL on error.
	 */
	public static ListG getAllForType(string contentType)
	{
		// GList* g_app_info_get_all_for_type (const char *content_type);
		auto p = g_app_info_get_all_for_type(Str.toStringz(contentType));
		if(p is null)
		{
			return null;
		}
		return new ListG(cast(GList*) p);
	}
	
	/**
	 * Gets the GAppInfo that correspond to a given content type.
	 * Params:
	 * contentType =  the content type to find a GAppInfo for
	 * mustSupportUris =  if TRUE, the GAppInfo is expected to
	 *  support URIs
	 * Returns: GAppInfo for given content_type or NULL on error.
	 */
	public static AppInfoIF getDefaultForType(string contentType, int mustSupportUris)
	{
		// GAppInfo* g_app_info_get_default_for_type (const char *content_type,  gboolean must_support_uris);
		auto p = g_app_info_get_default_for_type(Str.toStringz(contentType), mustSupportUris);
		if(p is null)
		{
			return null;
		}
		return new AppInfo(cast(GAppInfo*) p);
	}
	
	/**
	 * Gets the default application for launching applications
	 * using this URI scheme. A URI scheme is the initial part
	 * of the URI, up to but not including the ':', e.g. "http",
	 * "ftp" or "sip".
	 * Params:
	 * uriScheme =  a string containing a URI scheme.
	 * Returns: GAppInfo for given uri_scheme or NULL on error.
	 */
	public static AppInfoIF getDefaultForUriScheme(string uriScheme)
	{
		// GAppInfo* g_app_info_get_default_for_uri_scheme  (const char *uri_scheme);
		auto p = g_app_info_get_default_for_uri_scheme(Str.toStringz(uriScheme));
		if(p is null)
		{
			return null;
		}
		return new AppInfo(cast(GAppInfo*) p);
	}
	
	/**
	 * Utility function that launches the default application
	 * registered to handle the specified uri. Synchronous I/O
	 * is done on the uri to detext the type of the file if
	 * required.
	 * Params:
	 * uri =  the uri to show
	 * launchContext =  an optional GAppLaunchContext.
	 * Returns: TRUE on success, FALSE on error.
	 * Throws: GException on failure.
	 */
	public static int launchDefaultForUri(string uri, AppLaunchContext launchContext)
	{
		// gboolean g_app_info_launch_default_for_uri (const char *uri,  GAppLaunchContext *launch_context,  GError **error);
		GError* err = null;
		
		auto p = g_app_info_launch_default_for_uri(Str.toStringz(uri), (launchContext is null) ? null : launchContext.getAppLaunchContextStruct(), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
}
