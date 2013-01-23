.class Lcom/android/providers/settings/SettingsProvider$Injector;
.super Ljava/lang/Object;
.source "SettingsProvider.java"


# annotations
.annotation build Landroid/annotation/MiuiHook;
    value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_CLASS:Landroid/annotation/MiuiHook$MiuiHookType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/settings/SettingsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static checkUriForExtraCases(Landroid/net/Uri;I)Landroid/net/Uri;
    .locals 3
    .parameter "soundUri"
    .parameter "ringtoneType"

    .prologue
    .line 54
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, authority:Ljava/lang/String;
    const-string v2, "drm"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 56
    .local v1, isDrmAuthority:Z
    if-nez v1, :cond_0

    const-string v2, "media"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p0}, Landroid/media/ExtraRingtoneManager;->isExtraCases(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 57
    :cond_0
    if-eqz v1, :cond_2

    .line 63
    .end local p0
    :cond_1
    :goto_0
    return-object p0

    .line 60
    .restart local p0
    :cond_2
    invoke-static {p0, p1}, Landroid/media/ExtraRingtoneManager;->getUriForExtraCases(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object p0

    goto :goto_0
.end method

.method static getAuthority(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .parameter "soundUri"

    .prologue
    .line 67
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, authority:Ljava/lang/String;
    const-string v2, "drm"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 69
    .local v1, isDrmAuthority:Z
    if-eqz v1, :cond_1

    .line 75
    .end local v0           #authority:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 72
    .restart local v0       #authority:Ljava/lang/String;
    :cond_1
    const-string v2, "media"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {p0}, Landroid/media/ExtraRingtoneManager;->isExtraCases(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 73
    :cond_2
    const-string v0, "media"

    goto :goto_0
.end method
