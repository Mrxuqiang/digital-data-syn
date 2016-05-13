/*
================================================================================
��ṹ����:TB_PUBJL
��ṹ����:�������빫˾�����ϵ����1
��ṹĿ��:ȫ�ֱ�
================================================================================
*/

drop sequence SEQ_TB_PUBJL;
drop index AK_TB_PUBJL;
drop table TB_PUBJL;
create table TB_PUBJL  (
   PUBJL_ID             INTEGER                         not null,	/*ID		*/
   PUBJL001             INTEGER                         not null,	/*������ID	*/  
   PUBJL002             INTEGER                         not null,	/*�̳�ID	*/   
   PUBJL003             INTEGER                         not null,	/*��ͬID	*/    
   PUBJL004             INTEGER                         not null,	/*�̻�ID	*/    
   PUBJL005             VARCHAR2(16)                    not null,	/*������˾����	*/                                
   PUBJL006             VARCHAR2(16)                    not null,	/*ó�׻�����	*/                               
   CREATE_USER          VARCHAR2(12),                             
   USER_GROUP           VARCHAR2(12),                                                            
   CREATE_DATE          DATE,                                    
   MODIFIER             VARCHAR2(12),                            
   MODI_DATE            DATE,                                    
   FLAG                 NUMBER,                                  
   constraint PK_TB_PUBJL primary key (PUBJL_ID)
);
create unique index AK_TB_PUBJL on TB_PUBJL (PUBJL001,PUBJL002,PUBJL003,PUBJL004,FLAG);
create sequence SEQ_TB_PUBJL minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBJL to public;
grant index  on TB_PUBJL to public;
grant update on TB_PUBJL to public; 
grant delete on TB_PUBJL to public;  
grant insert on TB_PUBJL to public; 
grant select on SEQ_TB_PUBJL to public;   