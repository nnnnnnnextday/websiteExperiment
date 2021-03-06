#pragma warning disable 1591
//------------------------------------------------------------------------------
// <auto-generated>
//     此代码由工具生成。
//     运行时版本:2.0.50727.3053
//
//     对此文件的更改可能会导致不正确的行为，并且如果
//     重新生成代码，这些更改将会丢失。
// </auto-generated>
//------------------------------------------------------------------------------

using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.Linq;
using System.Data.Linq.Mapping;
using System.Linq;
using System.Linq.Expressions;
using System.Reflection;



[System.Data.Linq.Mapping.DatabaseAttribute(Name="Student")]
public partial class StudentDataContext : System.Data.Linq.DataContext
{
	
	private static System.Data.Linq.Mapping.MappingSource mappingSource = new AttributeMappingSource();
	
  #region Extensibility Method Definitions
  partial void OnCreated();
  partial void InsertStuInfo(StuInfo instance);
  partial void UpdateStuInfo(StuInfo instance);
  partial void DeleteStuInfo(StuInfo instance);
  partial void InsertMajor(Major instance);
  partial void UpdateMajor(Major instance);
  partial void DeleteMajor(Major instance);
  #endregion
	
	public StudentDataContext() : 
			base(global::System.Configuration.ConfigurationManager.ConnectionStrings["StudentConnectionString"].ConnectionString, mappingSource)
	{
		OnCreated();
	}
	
	public StudentDataContext(string connection) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public StudentDataContext(System.Data.IDbConnection connection) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public StudentDataContext(string connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public StudentDataContext(System.Data.IDbConnection connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public System.Data.Linq.Table<StuInfo> StuInfo
	{
		get
		{
			return this.GetTable<StuInfo>();
		}
	}
	
	public System.Data.Linq.Table<Major> Major
	{
		get
		{
			return this.GetTable<Major>();
		}
	}
}

[Table(Name="dbo.StuInfo")]
public partial class StuInfo : INotifyPropertyChanging, INotifyPropertyChanged
{
	
	private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
	
	private string _StuNo;
	
	private string _Name;
	
	private string _Sex;
	
	private System.DateTime _Birth;
	
	private int _MajorId;
	
	private EntityRef<Major> _Major;
	
    #region Extensibility Method Definitions
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnStuNoChanging(string value);
    partial void OnStuNoChanged();
    partial void OnNameChanging(string value);
    partial void OnNameChanged();
    partial void OnSexChanging(string value);
    partial void OnSexChanged();
    partial void OnBirthChanging(System.DateTime value);
    partial void OnBirthChanged();
    partial void OnMajorIdChanging(int value);
    partial void OnMajorIdChanged();
    #endregion
	
	public StuInfo()
	{
		this._Major = default(EntityRef<Major>);
		OnCreated();
	}
	
	[Column(Storage="_StuNo", DbType="VarChar(8) NOT NULL", CanBeNull=false, IsPrimaryKey=true)]
	public string StuNo
	{
		get
		{
			return this._StuNo;
		}
		set
		{
			if ((this._StuNo != value))
			{
				this.OnStuNoChanging(value);
				this.SendPropertyChanging();
				this._StuNo = value;
				this.SendPropertyChanged("StuNo");
				this.OnStuNoChanged();
			}
		}
	}
	
	[Column(Storage="_Name", DbType="VarChar(20) NOT NULL", CanBeNull=false)]
	public string Name
	{
		get
		{
			return this._Name;
		}
		set
		{
			if ((this._Name != value))
			{
				this.OnNameChanging(value);
				this.SendPropertyChanging();
				this._Name = value;
				this.SendPropertyChanged("Name");
				this.OnNameChanged();
			}
		}
	}
	
	[Column(Storage="_Sex", DbType="Char(2) NOT NULL", CanBeNull=false)]
	public string Sex
	{
		get
		{
			return this._Sex;
		}
		set
		{
			if ((this._Sex != value))
			{
				this.OnSexChanging(value);
				this.SendPropertyChanging();
				this._Sex = value;
				this.SendPropertyChanged("Sex");
				this.OnSexChanged();
			}
		}
	}
	
	[Column(Storage="_Birth", DbType="DateTime NOT NULL")]
	public System.DateTime Birth
	{
		get
		{
			return this._Birth;
		}
		set
		{
			if ((this._Birth != value))
			{
				this.OnBirthChanging(value);
				this.SendPropertyChanging();
				this._Birth = value;
				this.SendPropertyChanged("Birth");
				this.OnBirthChanged();
			}
		}
	}
	
	[Column(Storage="_MajorId", DbType="Int NOT NULL")]
	public int MajorId
	{
		get
		{
			return this._MajorId;
		}
		set
		{
			if ((this._MajorId != value))
			{
				if (this._Major.HasLoadedOrAssignedValue)
				{
					throw new System.Data.Linq.ForeignKeyReferenceAlreadyHasValueException();
				}
				this.OnMajorIdChanging(value);
				this.SendPropertyChanging();
				this._MajorId = value;
				this.SendPropertyChanged("MajorId");
				this.OnMajorIdChanged();
			}
		}
	}
	
	[Association(Name="Major_StuInfo", Storage="_Major", ThisKey="MajorId", OtherKey="MajorId", IsForeignKey=true)]
	public Major Major
	{
		get
		{
			return this._Major.Entity;
		}
		set
		{
			Major previousValue = this._Major.Entity;
			if (((previousValue != value) 
						|| (this._Major.HasLoadedOrAssignedValue == false)))
			{
				this.SendPropertyChanging();
				if ((previousValue != null))
				{
					this._Major.Entity = null;
					previousValue.StuInfo.Remove(this);
				}
				this._Major.Entity = value;
				if ((value != null))
				{
					value.StuInfo.Add(this);
					this._MajorId = value.MajorId;
				}
				else
				{
					this._MajorId = default(int);
				}
				this.SendPropertyChanged("Major");
			}
		}
	}
	
	public event PropertyChangingEventHandler PropertyChanging;
	
	public event PropertyChangedEventHandler PropertyChanged;
	
	protected virtual void SendPropertyChanging()
	{
		if ((this.PropertyChanging != null))
		{
			this.PropertyChanging(this, emptyChangingEventArgs);
		}
	}
	
	protected virtual void SendPropertyChanged(String propertyName)
	{
		if ((this.PropertyChanged != null))
		{
			this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
		}
	}
}

[Table(Name="dbo.Major")]
public partial class Major : INotifyPropertyChanging, INotifyPropertyChanged
{
	
	private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
	
	private int _MajorId;
	
	private string _MajorName;
	
	private EntitySet<StuInfo> _StuInfo;
	
    #region Extensibility Method Definitions
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnMajorIdChanging(int value);
    partial void OnMajorIdChanged();
    partial void OnMajorNameChanging(string value);
    partial void OnMajorNameChanged();
    #endregion
	
	public Major()
	{
		this._StuInfo = new EntitySet<StuInfo>(new Action<StuInfo>(this.attach_StuInfo), new Action<StuInfo>(this.detach_StuInfo));
		OnCreated();
	}
	
	[Column(Storage="_MajorId", DbType="Int NOT NULL", IsPrimaryKey=true)]
	public int MajorId
	{
		get
		{
			return this._MajorId;
		}
		set
		{
			if ((this._MajorId != value))
			{
				this.OnMajorIdChanging(value);
				this.SendPropertyChanging();
				this._MajorId = value;
				this.SendPropertyChanged("MajorId");
				this.OnMajorIdChanged();
			}
		}
	}
	
	[Column(Storage="_MajorName", DbType="VarChar(50) NOT NULL", CanBeNull=false)]
	public string MajorName
	{
		get
		{
			return this._MajorName;
		}
		set
		{
			if ((this._MajorName != value))
			{
				this.OnMajorNameChanging(value);
				this.SendPropertyChanging();
				this._MajorName = value;
				this.SendPropertyChanged("MajorName");
				this.OnMajorNameChanged();
			}
		}
	}
	
	[Association(Name="Major_StuInfo", Storage="_StuInfo", ThisKey="MajorId", OtherKey="MajorId")]
	public EntitySet<StuInfo> StuInfo
	{
		get
		{
			return this._StuInfo;
		}
		set
		{
			this._StuInfo.Assign(value);
		}
	}
	
	public event PropertyChangingEventHandler PropertyChanging;
	
	public event PropertyChangedEventHandler PropertyChanged;
	
	protected virtual void SendPropertyChanging()
	{
		if ((this.PropertyChanging != null))
		{
			this.PropertyChanging(this, emptyChangingEventArgs);
		}
	}
	
	protected virtual void SendPropertyChanged(String propertyName)
	{
		if ((this.PropertyChanged != null))
		{
			this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
		}
	}
	
	private void attach_StuInfo(StuInfo entity)
	{
		this.SendPropertyChanging();
		entity.Major = this;
	}
	
	private void detach_StuInfo(StuInfo entity)
	{
		this.SendPropertyChanging();
		entity.Major = null;
	}
}
#pragma warning restore 1591
