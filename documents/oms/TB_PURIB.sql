/*
================================================================================
��ṹ����:TB_PURIB
��ṹ����:�ɹ����뵥�ӱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PURIB;
drop index AK_TB_PURIB;
drop table TB_PURIB;
create table TB_PURIB  (
   PURIB_ID               INTEGER                   not null,             /*��Ʒ��ϸID           */
   PURIB001               INTEGER                   not null,             /*�ɹ����뵥ID         */
   PURIB002               INTEGER                   not null,             /*��ƷID               */
   PURIB003               INTEGER,                                        /*ά��1                */
   PURIB004               INTEGER,                                        /*ά��2                */
   PURIB005               INTEGER,                                        /*ά��3                */
   PURIB006               INTEGER,                                        /*ά��4                */
   PURIB007               INTEGER,                                        /*ά��5                */
   PURIB008               INTEGER                   not null,             /*�ɹ���λ             */
   PURIB009               NUMBER(18,3)              not null,             /*������               */
   PURIB010               NUMBER(18,3)              not null,             /*�ɹ���               */ 
   PURIB011               NUMBER(12,2),                                   /*˰ǰ����             */
   PURIB012               NUMBER(12,2),                                   /*��˰����             */
   PURIB013               INTEGER                   not null,             /*˰��                 */
   PURIB014               NUMBER(18,3)              not null,             /*˰��                 */
   PURIB015               NUMBER(18,3),                                   /*ȡ����               */  --modify by 20100622
   PURIB016               NUMBER(12,2),                                   /*˰ǰ���             */
   PURIB017               NUMBER(12,2),                                   /*��˰���             */
   PURIB018               INTEGER,                                        /*��Ӧ��               */
   PURIB019               VARCHAR2(1),                                    /*��������             */  --modify by 20100815
--   PURIB020             NUMBER(18,3),                                   /*����                 */ --mrak by 20100328
 --  PURIB021             VARCHAR2(1)               not null,             /*�᰸�롦              */ --mrak by 20100328
 --  PURIB022             NUMBER(12,2),                                   /*��ǰ�ۼ�             */ --mrak by 20100328
   --PURIB023             NUMBER(18,3),                                   /*��ǰ����             */ --mrak by 20100328
  -- PURIB024             NUMBER(1)                 not null,             /*���ȼ�               */ --mrak by 20100328
   PURIB025               DATE ,                                          /*Ԥ������             */
   PURIB026               NUMBER(18,3),                                   /*��λ������           */
   PURIB027               VARCHAR2(255),                                  /*��ע                 */
   PURIB028               VARCHAR2(1),                                    /*��Ʒ��������         */ add by hansf 1���׼� 2��װ�� 3����
   PURIB029               NUMBER(12,2),			                  /*���ջ���             */
   PURIB030               NUMBER(12,2),                                   /*�����               */
   PURIB031               VARCHAR2(1),                                    /*�Ƿ���װƷ           */
   PURIB032               VARCHAR2(1),                                    /*�Ƿ�ɷ�             */
   PURIB033               INTEGER,                                        /*����ƷID             */
   PURIB034               INTEGER,                                        /*����                 */
   PURIB035               VARCHAR2(30),                                   /*���׼���Ӧ��ϵ����� */
   PURIB036               VARCHAR2(255),                                  /*˵��                 */--20110503 add by xiechun
   PURIB037               VARCHAR2(255),                                  /*����ԭ��             */--20110503 add by xiechun
   PURIB038               NUMBER(18,3),                                   /*ȷ����               */--20111103 add by shizhan
   CREATE_USER            VARCHAR2(12),                                   /*������Ա             */
   USER_GROUP             VARCHAR2(12),                                   /*������Ա����         */                               
   CREATE_DATE            DATE,                                           /*��������             */
   MODIFIER               VARCHAR2(12),                                   /*�޸���Ա             */
   MODI_DATE              DATE,                                           /*�޸�����             */
   FLAG                   NUMBER(1),                                      /*����״̬             */
   constraint PK_TB_PURIB primary key (PURIB_ID)
);

create sequence SEQ_TB_PURIB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PURIB to public;
grant index  on TB_PURIB to public;
grant update on TB_PURIB to public; 
grant delete on TB_PURIB to public;  
grant insert on TB_PURIB to public; 
grant select on SEQ_TB_PURIB to public;   