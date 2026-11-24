package com.eviltester.tracks;

/**
 * Object for the Tracks site
 */
public class TracksSite {

    private final String rootURL;

    public TracksSite(String rootURL) {
        this.rootURL = rootURL;
    }

    public String getLoginURL() {
        return this.rootURL + "/tracks/login";
    }

    public String getLogoutURL() {
        return this.rootURL + "/tracks/logout";
    }
}
