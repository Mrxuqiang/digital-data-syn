/*
================================================================================
��ṹ����:TB_PUBJO
��ṹ����:�������빫˾�����ϵ����4
��ṹĿ��:ȫ�ֱ�
================================================================================
*/

drop sequence SEQ_TB_PUBJO;
drop index AK_TB_PUBJO;
drop table TB_PUBJO;
create table TB_PUBJO  (
   PUBJO_ID             INTEGER                         not null,	/*ID		*/
   PUBJO001             INTEGER                         not null,  	/*������ID	*/
   PUBJO002             INTEGER                         not null, 	/*�̳�ID	*/
   PUBJO003             VARCHAR2(16)                    not null,       /*������˾����	*/                       
   PUBJO004             VARCHAR2(16)                    not null,       /*ó�׻�����	*/                      
   CREATE_USER          VARCHAR2(12),                             
   USER_GROUP           VARCHAR2(12),                                                            
   CREATE_DATE          DATE,                                    
   MODIFIER             VARCHAR2(12),                            
   MODI_DATE            DATE,                                    
   FLAG                 NUMBER,                                  
   constraint PK_TB_PUBJO primary key (PUBJO_ID)
);
create unique index AK_TB_PUBJO on TB_PUBJO (PUBJO001,PUBJO002,FLAG);
create sequence SEQ_TB_PUBJO minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBJO to public;
grant index  on TB_PUBJO to public;
grant update on TB_PUBJO to public; 
grant delete on TB_PUBJO to public;  
grant insert on TB_PUBJO to public; 
grant select on SEQ_TB_PUBJO to public;   