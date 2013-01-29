.class public Lcom/android/camera/RecordGesturePreference;
.super Lcom/android/camera/IconListPreference;
.source "RecordGesturePreference.java"


# instance fields
.field private final mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/android/camera/IconListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/RecordGesturePreference;->mResolver:Landroid/content/ContentResolver;

    .line 40
    return-void
.end method

.method public static get(Landroid/content/SharedPreferences;Landroid/content/ContentResolver;)Z
    .locals 3
    .parameter "pref"
    .parameter "resolver"

    .prologue
    .line 49
    const-string v1, "pref_camera_recordgesture_key"

    const-string v2, "gesture-off"

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, value:Ljava/lang/String;
    const-string v1, "gesture-on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 2

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/android/camera/RecordGesturePreference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/RecordGesturePreference;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v0, v1}, Lcom/android/camera/RecordGesturePreference;->get(Landroid/content/SharedPreferences;Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "gesture-on"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "gesture-off"

    goto :goto_0
.end method
