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
 * inFile  = GtkIMContext.html
 * outPack = gtk
 * outFile = IMContext
 * strct   = GtkIMContext
 * realStrct=
 * ctorStrct=
 * clss    = IMContext
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_im_context_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gdk.Window
 * 	- gdk.Rectangle
 * structWrap:
 * 	- GdkRectangle* -> Rectangle
 * 	- GdkWindow* -> Window
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.IMContext;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;

private import gobject.Signals;
public  import gtkc.gdktypes;

private import glib.Str;
private import gdk.Window;
private import gdk.Rectangle;



private import gobject.ObjectG;

/**
 * Description
 */
public class IMContext : ObjectG
{
	
	/** the main Gtk struct */
	protected GtkIMContext* gtkIMContext;
	
	
	public GtkIMContext* getIMContextStruct()
	{
		return gtkIMContext;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkIMContext;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkIMContext* gtkIMContext)
	{
		if(gtkIMContext is null)
		{
			this = null;
			return;
		}
		//Check if there already is a D object for this gtk struct
		void* ptr = getDObject(cast(GObject*)gtkIMContext);
		if( ptr !is null )
		{
			this = cast(IMContext)ptr;
			return;
		}
		super(cast(GObject*)gtkIMContext);
		this.gtkIMContext = gtkIMContext;
	}
	
	/**
	 */
	int[char[]] connectedSignals;
	
	void delegate(string, IMContext)[] onCommitListeners;
	/**
	 */
	void addOnCommit(void delegate(string, IMContext) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("commit" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"commit",
			cast(GCallback)&callBackCommit,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["commit"] = 1;
		}
		onCommitListeners ~= dlg;
	}
	extern(C) static void callBackCommit(GtkIMContext* imcontextStruct, gchar* arg1, IMContext iMContext)
	{
		foreach ( void delegate(string, IMContext) dlg ; iMContext.onCommitListeners )
		{
			dlg(Str.toString(arg1), iMContext);
		}
	}
	
	bool delegate(gint, gint, IMContext)[] onDeleteSurroundingListeners;
	/**
	 */
	void addOnDeleteSurrounding(bool delegate(gint, gint, IMContext) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("delete-surrounding" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"delete-surrounding",
			cast(GCallback)&callBackDeleteSurrounding,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["delete-surrounding"] = 1;
		}
		onDeleteSurroundingListeners ~= dlg;
	}
	extern(C) static gboolean callBackDeleteSurrounding(GtkIMContext* imcontextStruct, gint arg1, gint arg2, IMContext iMContext)
	{
		foreach ( bool delegate(gint, gint, IMContext) dlg ; iMContext.onDeleteSurroundingListeners )
		{
			if ( dlg(arg1, arg2, iMContext) )
			{
				return 1;
			}
		}
		
		return 0;
	}
	
	void delegate(IMContext)[] onPreeditChangedListeners;
	/**
	 */
	void addOnPreeditChanged(void delegate(IMContext) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("preedit-changed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"preedit-changed",
			cast(GCallback)&callBackPreeditChanged,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["preedit-changed"] = 1;
		}
		onPreeditChangedListeners ~= dlg;
	}
	extern(C) static void callBackPreeditChanged(GtkIMContext* imcontextStruct, IMContext iMContext)
	{
		foreach ( void delegate(IMContext) dlg ; iMContext.onPreeditChangedListeners )
		{
			dlg(iMContext);
		}
	}
	
	void delegate(IMContext)[] onPreeditEndListeners;
	/**
	 */
	void addOnPreeditEnd(void delegate(IMContext) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("preedit-end" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"preedit-end",
			cast(GCallback)&callBackPreeditEnd,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["preedit-end"] = 1;
		}
		onPreeditEndListeners ~= dlg;
	}
	extern(C) static void callBackPreeditEnd(GtkIMContext* imcontextStruct, IMContext iMContext)
	{
		foreach ( void delegate(IMContext) dlg ; iMContext.onPreeditEndListeners )
		{
			dlg(iMContext);
		}
	}
	
	void delegate(IMContext)[] onPreeditStartListeners;
	/**
	 */
	void addOnPreeditStart(void delegate(IMContext) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("preedit-start" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"preedit-start",
			cast(GCallback)&callBackPreeditStart,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["preedit-start"] = 1;
		}
		onPreeditStartListeners ~= dlg;
	}
	extern(C) static void callBackPreeditStart(GtkIMContext* imcontextStruct, IMContext iMContext)
	{
		foreach ( void delegate(IMContext) dlg ; iMContext.onPreeditStartListeners )
		{
			dlg(iMContext);
		}
	}
	
	bool delegate(IMContext)[] onRetrieveSurroundingListeners;
	/**
	 */
	void addOnRetrieveSurrounding(bool delegate(IMContext) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("retrieve-surrounding" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"retrieve-surrounding",
			cast(GCallback)&callBackRetrieveSurrounding,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["retrieve-surrounding"] = 1;
		}
		onRetrieveSurroundingListeners ~= dlg;
	}
	extern(C) static gboolean callBackRetrieveSurrounding(GtkIMContext* imcontextStruct, IMContext iMContext)
	{
		foreach ( bool delegate(IMContext) dlg ; iMContext.onRetrieveSurroundingListeners )
		{
			if ( dlg(iMContext) )
			{
				return 1;
			}
		}
		
		return 0;
	}
	
	
	/**
	 * Set the client window for the input context; this is the
	 * GdkWindow in which the input appears. This window is
	 * used in order to correctly position status windows, and may
	 * also be used for purposes internal to the input method.
	 * Params:
	 * window =  the client window. This may be NULL to indicate
	 *  that the previous client window no longer exists.
	 */
	public void setClientWindow(Window window)
	{
		// void gtk_im_context_set_client_window (GtkIMContext *context,  GdkWindow *window);
		gtk_im_context_set_client_window(gtkIMContext, (window is null) ? null : window.getWindowStruct());
	}
	
	/**
	 * Retrieve the current preedit string for the input context,
	 * and a list of attributes to apply to the string.
	 * This string should be displayed inserted at the insertion
	 * point.
	 * Params:
	 * str =  location to store the retrieved string. The
	 *  string retrieved must be freed with g_free().
	 * attrs =  location to store the retrieved attribute list.
	 *  When you are done with this list, you must
	 *  unreference it with pango_attr_list_unref().
	 * cursorPos =  location to store position of cursor (in characters)
	 *  within the preedit string.
	 */
	public void getPreeditString(out string str, out PangoAttrList* attrs, out int cursorPos)
	{
		// void gtk_im_context_get_preedit_string (GtkIMContext *context,  gchar **str,  PangoAttrList **attrs,  gint *cursor_pos);
		char* outstr = null;
		
		gtk_im_context_get_preedit_string(gtkIMContext, &outstr, &attrs, &cursorPos);
		
		str = Str.toString(outstr);
	}
	
	/**
	 * Allow an input method to internally handle key press and release
	 * events. If this function returns TRUE, then no further processing
	 * should be done for this key event.
	 * Params:
	 * event =  the key event
	 * Returns: TRUE if the input method handled the key event.
	 */
	public int filterKeypress(GdkEventKey* event)
	{
		// gboolean gtk_im_context_filter_keypress (GtkIMContext *context,  GdkEventKey *event);
		return gtk_im_context_filter_keypress(gtkIMContext, event);
	}
	
	/**
	 * Notify the input method that the widget to which this
	 * input context corresponds has gained focus. The input method
	 * may, for example, change the displayed feedback to reflect
	 * this change.
	 */
	public void focusIn()
	{
		// void gtk_im_context_focus_in (GtkIMContext *context);
		gtk_im_context_focus_in(gtkIMContext);
	}
	
	/**
	 * Notify the input method that the widget to which this
	 * input context corresponds has lost focus. The input method
	 * may, for example, change the displayed feedback or reset the contexts
	 * state to reflect this change.
	 */
	public void focusOut()
	{
		// void gtk_im_context_focus_out (GtkIMContext *context);
		gtk_im_context_focus_out(gtkIMContext);
	}
	
	/**
	 * Notify the input method that a change such as a change in cursor
	 * position has been made. This will typically cause the input
	 * method to clear the preedit state.
	 */
	public void reset()
	{
		// void gtk_im_context_reset (GtkIMContext *context);
		gtk_im_context_reset(gtkIMContext);
	}
	
	/**
	 * Notify the input method that a change in cursor
	 * position has been made. The location is relative to the client
	 * window.
	 * Params:
	 * area =  new location
	 */
	public void setCursorLocation(Rectangle area)
	{
		// void gtk_im_context_set_cursor_location (GtkIMContext *context,  const GdkRectangle *area);
		gtk_im_context_set_cursor_location(gtkIMContext, (area is null) ? null : area.getRectangleStruct());
	}
	
	/**
	 * Sets whether the IM context should use the preedit string
	 * to display feedback. If use_preedit is FALSE (default
	 * is TRUE), then the IM context may use some other method to display
	 * feedback, such as displaying it in a child of the root window.
	 * Params:
	 * usePreedit =  whether the IM context should use the preedit string.
	 */
	public void setUsePreedit(int usePreedit)
	{
		// void gtk_im_context_set_use_preedit (GtkIMContext *context,  gboolean use_preedit);
		gtk_im_context_set_use_preedit(gtkIMContext, usePreedit);
	}
	
	/**
	 * Sets surrounding context around the insertion point and preedit
	 * string. This function is expected to be called in response to the
	 * GtkIMContext::retrieve_surrounding signal, and will likely have no
	 * effect if called at other times.
	 * Params:
	 * text =  text surrounding the insertion point, as UTF-8.
	 *  the preedit string should not be included within
	 *  text.
	 * len =  the length of text, or -1 if text is nul-terminated
	 * cursorIndex =  the byte index of the insertion cursor within text.
	 */
	public void setSurrounding(string text, int len, int cursorIndex)
	{
		// void gtk_im_context_set_surrounding (GtkIMContext *context,  const gchar *text,  gint len,  gint cursor_index);
		gtk_im_context_set_surrounding(gtkIMContext, Str.toStringz(text), len, cursorIndex);
	}
	
	/**
	 * Retrieves context around the insertion point. Input methods
	 * typically want context in order to constrain input text based on
	 * existing text; this is important for languages such as Thai where
	 * only some sequences of characters are allowed.
	 * This function is implemented by emitting the
	 * GtkIMContext::retrieve_surrounding signal on the input method; in
	 * response to this signal, a widget should provide as much context as
	 * is available, up to an entire paragraph, by calling
	 * gtk_im_context_set_surrounding(). Note that there is no obligation
	 * for a widget to respond to the ::retrieve_surrounding signal, so input
	 * methods must be prepared to function without context.
	 * Params:
	 * text =  location to store a UTF-8 encoded string of text
	 *  holding context around the insertion point.
	 *  If the function returns TRUE, then you must free
	 *  the result stored in this location with g_free().
	 * cursorIndex =  location to store byte index of the insertion cursor
	 *  within text.
	 * Returns: TRUE if surrounding text was provided; in this case you must free the result stored in *text.
	 */
	public int getSurrounding(out string text, out int cursorIndex)
	{
		// gboolean gtk_im_context_get_surrounding (GtkIMContext *context,  gchar **text,  gint *cursor_index);
		char* outtext = null;
		
		auto p = gtk_im_context_get_surrounding(gtkIMContext, &outtext, &cursorIndex);
		
		text = Str.toString(outtext);
		return p;
	}
	
	/**
	 * Asks the widget that the input context is attached to to delete
	 * characters around the cursor position by emitting the
	 * GtkIMContext::delete_surrounding signal. Note that offset and n_chars
	 * are in characters not in bytes which differs from the usage other
	 * places in GtkIMContext.
	 * In order to use this function, you should first call
	 * gtk_im_context_get_surrounding() to get the current context, and
	 * call this function immediately afterwards to make sure that you
	 * know what you are deleting. You should also account for the fact
	 * that even if the signal was handled, the input context might not
	 * have deleted all the characters that were requested to be deleted.
	 * This function is used by an input method that wants to make
	 * subsitutions in the existing text in response to new input. It is
	 * not useful for applications.
	 * Params:
	 * offset =  offset from cursor position in chars;
	 *  a negative value means start before the cursor.
	 * nChars =  number of characters to delete.
	 * Returns: TRUE if the signal was handled.Signal DetailsThe "commit" signalvoid user_function (GtkIMContext *imcontext, gchar *arg1, gpointer user_data) : Run Last
	 */
	public int deleteSurrounding(int offset, int nChars)
	{
		// gboolean gtk_im_context_delete_surrounding (GtkIMContext *context,  gint offset,  gint n_chars);
		return gtk_im_context_delete_surrounding(gtkIMContext, offset, nChars);
	}
}
