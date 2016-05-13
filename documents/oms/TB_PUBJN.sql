/*
================================================================================
��ṹ����:TB_PUBJN
��ṹ����:�������빫˾�����ϵ����3
��ṹĿ��:ȫ�ֱ�
================================================================================
*/

drop sequence SEQ_TB_PUBJN;
drop index AK_TB_PUBJN;
drop table TB_PUBJN;
create table TB_PUBJN  (
   PUBJN_ID             INTEGER                         not null,	/*ID		*/
   PUBJN001             INTEGER                         not null,  	/*������ID	*/
   PUBJN002             INTEGER                         not null, 	/*�̳�ID	*/
   PUBJN003             INTEGER                         not null,  	/*¥��ID	*/
   PUBJN004             VARCHAR2(16)                    not null,       /*������˾����	*/                       
   PUBJN005             VARCHAR2(16)                    not null,       /*ó�׻�����	*/                      
   CREATE_USER          VARCHAR2(12),                             
   USER_GROUP           VARCHAR2(12),                                                            
   CREATE_DATE          DATE,                                    
   MODIFIER             VARCHAR2(12),                            
   MODI_DATE            DATE,                                    
   FLAG                 NUMBER,                                  
   constraint PK_TB_PUBJN primary key (PUBJN_ID)
);
create unique index AK_TB_PUBJN on TB_PUBJN (PUBJN001,PUBJN002,PUBJN003,FLAG);
create sequence SEQ_TB_PUBJN minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBJN to public;
grant index  on TB_PUBJN to public;
grant update on TB_PUBJN to public; 
grant delete on TB_PUBJN to public;  
grant insert on TB_PUBJN to public; 
grant select on SEQ_TB_PUBJN to public;   