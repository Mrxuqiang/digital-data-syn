/*
================================================================================
��ṹ����:TB_PUBJM
��ṹ����:�������빫˾�����ϵ����2
��ṹĿ��:ȫ�ֱ�
================================================================================
*/

drop sequence SEQ_TB_PUBJM;
drop index AK_TB_PUBJM;
drop table TB_PUBJM;
create table TB_PUBJM  (
   PUBJM_ID             INTEGER                         not null,	/*ID		*/
   PUBJM001             INTEGER                         not null,  	/*������ID	*/
   PUBJM002             INTEGER                         not null, 	/*�̳�ID	*/
   PUBJM003             INTEGER                         not null,  	/*¥��ID	*/
   PUBJM004             INTEGER                         not null,  	/*¥��ID	*/
   PUBJM005             VARCHAR2(16)                    not null,       /*������˾����	*/                       
   PUBJM006             VARCHAR2(16)                    not null,       /*ó�׻�����	*/                      
   CREATE_USER          VARCHAR2(12),                             
   USER_GROUP           VARCHAR2(12),                                                            
   CREATE_DATE          DATE,                                    
   MODIFIER             VARCHAR2(12),                            
   MODI_DATE            DATE,                                    
   FLAG                 NUMBER,                                  
   constraint PK_TB_PUBJM primary key (PUBJM_ID)
);
create unique index AK_TB_PUBJM on TB_PUBJM (PUBJM001,PUBJM002,PUBJM003,PUBJM004,FLAG);
create sequence SEQ_TB_PUBJM minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBJM to public;
grant index  on TB_PUBJM to public;
grant update on TB_PUBJM to public; 
grant delete on TB_PUBJM to public;  
grant insert on TB_PUBJM to public; 
grant select on SEQ_TB_PUBJM to public;   