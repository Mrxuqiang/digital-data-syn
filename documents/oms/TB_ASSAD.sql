/*
================================================================================
��ṹ����:TB_ASSAD
��ṹ����:�̶��ʲ������ӱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_ASSAD;
drop index AK_TB_ASSAD;
drop table TB_ASSAD;
create table TB_ASSAD  (
   ASSAD_ID             INTEGER                         not null,   /*�����ӱ�ID            */ 
   ASSAD001             INTEGER                         not null,   /*��������ID            */  
   ASSAD002             VARCHAR2(60),                               /*�ʲ�����              */
   ASSAD003             INTEGER,                                    /*������ID             */  
   ASSAD004             INTEGER,                                    /*������ID             */  
   ASSAD005             NUMBER(4),                                  /*����                   */    
   ASSAD006             INTEGER,                                    /*��λID                 */ 
   ASSAD007             NUMBER(16,2),                               /*ԭ�ҵ���               */   
   ASSAD008             NUMBER(16,2),                               /*���ҵ���               */   
   ASSAD009             INTEGER,                                    /*˰��ID                 */   
   ASSAD010             NUMBER(12,4),                               /*˰��                   */  
   ASSAD011             NUMBER(16,2),                               /*ԭ��˰ǰ���           */  
   ASSAD012             NUMBER(16,2),                               /*����˰ǰ���           */ 
   ASSAD013             NUMBER(16,2),                               /*ԭ��˰��               */  
   ASSAD014             NUMBER(16,2),                               /*����˰��               */   
   ASSAD015             NUMBER(16,2),                               /*ԭ�Һ�˰���           */
   ASSAD016             NUMBER(16,2),                               /*���Һ�˰���           */  
   ASSAD017             NUMBER(16,2),                               /*��ע                   */ 
   ASSAD018             INTEGER,                                    /*��Ƭ���               */
   ASSAD019             VARCHAR2(1),                                /*������                 */ 
   ASSAD020             NUMBER(22,2),                               /*ԭ�ҽ��˽��           */
   ASSAD021             NUMBER(22,2),                               /*���ҽ��˽��           */                                                                   
   CREATE_USER          VARCHAR2(12),                               /*������Ա               */
   USER_GROUP           VARCHAR2(12),                               /*������Ա����           */                               
   CREATE_DATE          DATE,                                       /*��������               */
   MODIFIER             VARCHAR2(12),                               /*�޸���Ա               */
   MODI_DATE            DATE,                                       /*�޸�����               */
   FLAG                 NUMBER,                                  /*����״̬               */
   constraint PK_TB_ASSAD primary key (ASSAD_ID)
);
create sequence SEQ_TB_ASSAD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_ASSAD to public;
grant index  on TB_ASSAD to public;
grant update on TB_ASSAD to public; 
grant delete on TB_ASSAD to public;  
grant insert on TB_ASSAD to public; 
grant select on SEQ_TB_ASSAD to public;   