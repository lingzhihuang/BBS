
package vo ;

import java.util.* ;
public class PersonVo
{
	
	private String id ;
	private String name ;
	private String password ;
	private List errors ;

	public boolean invalidate()
	{
		boolean flag = true ;
		if(this.id==null||"".equals(this.id))
		{
			flag = false ;
			errors.add("ID不能为空！") ;
		}
		else
		{
			if(this.id.length()<3||this.id.length()>10)
			{
				flag = false ;
				errors.add("ID的长度应为3~10位！") ;
			}
		}
		if(this.password==null||"".equals(this.password))
		{
			flag = false ;
			errors.add("密码不能为空！") ;
		}
		else
		{
			if(this.password.length()<3||this.password.length()>10)
			{
				flag = false ;
				errors.add("密码的长度应为3~10位！") ;
			}
		}
		return flag ;
	}

	public void setErrors(List errors)
	{
		this.errors = errors ;
	}
	public List getErrors()
	{
		return this.errors ;
	}

	public void setId(String id)
	{
		this.id = id ;
	}
	public void setName(String name)
	{
		this.name = name ;
	}
	public void setPassword(String password)
	{
		this.password = password ;
	}
	public String getId()
	{
		return this.id ;
	}
	public String getName()
	{
		return this.name ;
	}
	public String getPassword()
	{
		return this.password ;
	}
};