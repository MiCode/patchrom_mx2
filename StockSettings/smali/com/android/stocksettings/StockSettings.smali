.class public Lcom/android/stocksettings/StockSettings;
.super Landroid/preference/PreferenceActivity;
.source "StockSettings.java"


# instance fields
.field private mHomeKeyScreenOn:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private isHomeKeyScreenOn()Z
    .locals 3

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/android/stocksettings/StockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "home_key_screen_on"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, homeKeyScreenOn:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setHomeKeyScreenOn(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/android/stocksettings/StockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "home_key_screen_on"

    if-eqz p1, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 50
    return-void

    .line 49
    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 21
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lcom/android/stocksettings/StockSettings;->addPreferencesFromResource(I)V

    .line 23
    const-string v0, "home_key_screen_on"

    invoke-virtual {p0, v0}, Lcom/android/stocksettings/StockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/stocksettings/StockSettings;->mHomeKeyScreenOn:Landroid/preference/CheckBoxPreference;

    .line 24
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .parameter "preferenceScreen"
    .parameter "preference"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/stocksettings/StockSettings;->mHomeKeyScreenOn:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_0

    .line 38
    invoke-direct {p0}, Lcom/android/stocksettings/StockSettings;->isHomeKeyScreenOn()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/stocksettings/StockSettings;->setHomeKeyScreenOn(Z)V

    .line 40
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 38
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 29
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 30
    iget-object v0, p0, Lcom/android/stocksettings/StockSettings;->mHomeKeyScreenOn:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Lcom/android/stocksettings/StockSettings;->isHomeKeyScreenOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 31
    return-void
.end method
