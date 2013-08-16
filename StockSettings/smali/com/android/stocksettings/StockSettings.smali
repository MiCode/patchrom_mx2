.class public Lcom/android/stocksettings/StockSettings;
.super Landroid/preference/PreferenceActivity;
.source "StockSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mCPUfreqListPreference:Landroid/preference/ListPreference;

.field private mHomeKeyScreenOn:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private isHomeKeyScreenOn()Z
    .locals 3

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/android/stocksettings/StockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "home_key_screen_on"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 55
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
    .line 59
    invoke-virtual {p0}, Lcom/android/stocksettings/StockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "home_key_screen_on"

    if-eqz p1, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 60
    return-void

    .line 59
    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 25
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    const/high16 v2, 0x7f03

    invoke-virtual {p0, v2}, Lcom/android/stocksettings/StockSettings;->addPreferencesFromResource(I)V

    .line 27
    const-string v2, "home_key_screen_on"

    invoke-virtual {p0, v2}, Lcom/android/stocksettings/StockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/stocksettings/StockSettings;->mHomeKeyScreenOn:Landroid/preference/CheckBoxPreference;

    .line 28
    const-string v2, "cpufreq"

    invoke-virtual {p0, v2}, Lcom/android/stocksettings/StockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/android/stocksettings/StockSettings;->mCPUfreqListPreference:Landroid/preference/ListPreference;

    .line 29
    iget-object v2, p0, Lcom/android/stocksettings/StockSettings;->mCPUfreqListPreference:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 30
    invoke-static {}, Landroid/os/MeizuDeviceContorl;->readCPUfreq()I

    move-result v0

    .line 31
    .local v0, freq:I
    iget-object v2, p0, Lcom/android/stocksettings/StockSettings;->mCPUfreqListPreference:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 32
    iget-object v2, p0, Lcom/android/stocksettings/StockSettings;->mCPUfreqListPreference:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 33
    .local v1, index:I
    iget-object v2, p0, Lcom/android/stocksettings/StockSettings;->mCPUfreqListPreference:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/android/stocksettings/StockSettings;->mCPUfreqListPreference:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 34
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 65
    iget-object v1, p0, Lcom/android/stocksettings/StockSettings;->mCPUfreqListPreference:Landroid/preference/ListPreference;

    if-ne p1, v1, :cond_0

    move-object v1, p2

    .line 66
    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Landroid/os/MeizuDeviceContorl;->saveCPUfreq(I)I

    .line 67
    iget-object v1, p0, Lcom/android/stocksettings/StockSettings;->mCPUfreqListPreference:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v1, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 68
    .local v0, index:I
    iget-object v1, p0, Lcom/android/stocksettings/StockSettings;->mCPUfreqListPreference:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/stocksettings/StockSettings;->mCPUfreqListPreference:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 70
    .end local v0           #index:I
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .parameter "preferenceScreen"
    .parameter "preference"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/stocksettings/StockSettings;->mHomeKeyScreenOn:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_0

    .line 48
    invoke-direct {p0}, Lcom/android/stocksettings/StockSettings;->isHomeKeyScreenOn()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/stocksettings/StockSettings;->setHomeKeyScreenOn(Z)V

    .line 50
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 48
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 39
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 40
    iget-object v0, p0, Lcom/android/stocksettings/StockSettings;->mHomeKeyScreenOn:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Lcom/android/stocksettings/StockSettings;->isHomeKeyScreenOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 41
    return-void
.end method
