.class Lcom/android/providers/settings/SettingsBackupAgent$Network;
.super Ljava/lang/Object;
.source "SettingsBackupAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/settings/SettingsBackupAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Network"
.end annotation


# instance fields
.field key_mgmt:Ljava/lang/String;

.field final rawLines:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field ssid:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 120
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 121
    const-string v0, ""

    iput-object v0, p0, Lcom/android/providers/settings/SettingsBackupAgent$Network;->ssid:Ljava/lang/String;

    .line 122
    const-string v0, ""

    iput-object v0, p0, Lcom/android/providers/settings/SettingsBackupAgent$Network;->key_mgmt:Ljava/lang/String;

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/providers/settings/SettingsBackupAgent$Network;->rawLines:Ljava/util/ArrayList;

    return-void
.end method

.method public static readFromStream(Ljava/io/BufferedReader;)Lcom/android/providers/settings/SettingsBackupAgent$Network;
    .locals 4
    .parameter "in"

    .prologue
    .line 126
    new-instance v2, Lcom/android/providers/settings/SettingsBackupAgent$Network;

    invoke-direct {v2}, Lcom/android/providers/settings/SettingsBackupAgent$Network;-><init>()V

    .line 129
    .local v2, n:Lcom/android/providers/settings/SettingsBackupAgent$Network;
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->ready()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 130
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 131
    .local v1, line:Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v3, "}"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 139
    .end local v1           #line:Ljava/lang/String;
    .end local v2           #n:Lcom/android/providers/settings/SettingsBackupAgent$Network;
    :cond_0
    :goto_1
    return-object v2

    .line 134
    .restart local v1       #line:Ljava/lang/String;
    .restart local v2       #n:Lcom/android/providers/settings/SettingsBackupAgent$Network;
    :cond_1
    invoke-virtual {v2, v1}, Lcom/android/providers/settings/SettingsBackupAgent$Network;->rememberLine(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 136
    .end local v1           #line:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 137
    .local v0, e:Ljava/io/IOException;
    const/4 v2, 0x0

    goto :goto_1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .parameter "o"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 175
    if-ne p1, p0, :cond_1

    .line 183
    :cond_0
    :goto_0
    return v3

    .line 176
    :cond_1
    instance-of v5, p1, Lcom/android/providers/settings/SettingsBackupAgent$Network;

    if-nez v5, :cond_2

    move v3, v4

    goto :goto_0

    .line 179
    :cond_2
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/android/providers/settings/SettingsBackupAgent$Network;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    .local v2, other:Lcom/android/providers/settings/SettingsBackupAgent$Network;
    iget-object v5, p0, Lcom/android/providers/settings/SettingsBackupAgent$Network;->ssid:Ljava/lang/String;

    iget-object v6, v2, Lcom/android/providers/settings/SettingsBackupAgent$Network;->ssid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/providers/settings/SettingsBackupAgent$Network;->key_mgmt:Ljava/lang/String;

    iget-object v6, v2, Lcom/android/providers/settings/SettingsBackupAgent$Network;->key_mgmt:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_3
    move v3, v4

    goto :goto_0

    .line 180
    .end local v2           #other:Lcom/android/providers/settings/SettingsBackupAgent$Network;
    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/ClassCastException;
    move v3, v4

    .line 181
    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 188
    const/16 v0, 0x11

    .line 189
    .local v0, result:I
    iget-object v1, p0, Lcom/android/providers/settings/SettingsBackupAgent$Network;->ssid:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 190
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/android/providers/settings/SettingsBackupAgent$Network;->key_mgmt:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 191
    return v0
.end method

.method rememberLine(Ljava/lang/String;)V
    .locals 1
    .parameter "line"

    .prologue
    .line 144
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 145
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    iget-object v0, p0, Lcom/android/providers/settings/SettingsBackupAgent$Network;->rawLines:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    const-string v0, "ssid"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 150
    iput-object p1, p0, Lcom/android/providers/settings/SettingsBackupAgent$Network;->ssid:Ljava/lang/String;

    goto :goto_0

    .line 151
    :cond_2
    const-string v0, "key_mgmt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    iput-object p1, p0, Lcom/android/providers/settings/SettingsBackupAgent$Network;->key_mgmt:Ljava/lang/String;

    goto :goto_0
.end method

.method public write(Ljava/io/Writer;)V
    .locals 4
    .parameter "w"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 157
    const-string v2, "\nnetwork={\n"

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 158
    iget-object v2, p0, Lcom/android/providers/settings/SettingsBackupAgent$Network;->rawLines:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 159
    .local v1, line:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 161
    .end local v1           #line:Ljava/lang/String;
    :cond_0
    const-string v2, "}\n"

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 162
    return-void
.end method
